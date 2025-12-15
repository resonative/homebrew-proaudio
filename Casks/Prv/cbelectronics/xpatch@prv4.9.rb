cask "xpatch@prv4.9" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "4.9,8.4" # csv.first is xpatch version; csv.second is midiupd version
  sha256 "5073769fa409f81f880161c5721276e4c44ad04eae9c41e847facf5c52817f82"

  url "#{prv_archive_url}/x/xpatch/v#{version.csv.first}/XPatch4_Pack.zip",
      verified: prv_archive_url.to_s
  name "CB Electronics XPatch 4.9"
  desc "Control software for XPatch audio patchbay"
  homepage "https://www.cbelectronics.co.uk/downloads"

  auto_updates false

  pkg "XPatch4_Pack/Mac Software/XPatch#{version.csv.first}.pkg"
  pkg "XPatch4_Pack/Mac Software/Midiupd #{version.csv.second}.pkg"

  preflight do
    # As downloaded, the pkg does are flagged as quarantine
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/XPatch4_Pack/Mac Software/XPatch#{version.csv.first}.pkg"],
                   sudo: true
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/XPatch4_Pack/Mac Software/Midiupd #{version.csv.second}.pkg"],
                   sudo: true
  end

  uninstall quit:    [
                       "uk.co.cbelectronics.xpatch",
                       "midiupd",
                     ],
            pkgutil: [
                       "com.mygreatcompany.pkg.XPatch49",
                       "com.mygreatcompany.pkg.Midiupd84",
                     ],
            delete:  "~/Library/Saved Application State/uk.co.cbelectronics.xpatch.savedState/"
end
