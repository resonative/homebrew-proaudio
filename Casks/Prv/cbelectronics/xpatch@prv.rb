cask "xpatch@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "4.9"
  sha256 "78b4608e8b8c58a60d4bedf92fa91ec8456c30bea89ebe5acdf66955398e3730"

  url "#{prv_archive_url}/x/xpatch/v#{version}/XPatch4_Pack.zip",
      verified: prv_archive_url.to_s
  name "CB Electronics XPatch 4.9"
  desc "Control software for XPatch audio patchbay"
  homepage "https://www.cbelectronics.co.uk/downloads"

  auto_updates false

  pkg "XPatch4_Pack/Mac Software/XPatch#{version}.pkg"
  pkg "XPatch4_Pack/Mac Software/midiupd.pkg"

  preflight do
    # As downloaded, the pkg does are flagged as quarantine
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/XPatch4_Pack/Mac Software/XPatch#{version}.pkg"],
                   sudo: true
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/XPatch4_Pack/Mac Software/midiupd.pkg"],
                   sudo: true
  end

  uninstall quit:    [
                       "uk.co.cbelectronics.xpatch",
                       "midiupd",
                     ],
            pkgutil: [
                       "com.mygreatcompany.pkg.XPatch49",
                       "co.uk.cbelectronics.pkg.midiupd",
                     ],
            delete:  "~/Library/Saved Application State/uk.co.cbelectronics.xpatch.savedState/"
end
