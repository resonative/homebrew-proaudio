cask "cableguys-shaperbox@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.5.6"
  sha256 "5a2a878e66b80067309bed1e99dd39278cf7fe041e3ec5ba85c1a1eeaa9cb16c"

  url "#{prv_archive_url}/c/cableguys-shaperbox/v#{version}/Cableguys-ShaperBox3.zip",
      verified: prv_archive_url.to_s
  name "Cableguys ShaperBox"
  desc "Tempo-synced audio effects"
  homepage "https://www.cableguys.com/shaperbox"

  auto_updates false

  pkg "Cableguys - ShaperBox #{version}/Mac/Cableguys - ShaperBox #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.shaperbox3.*"

  zap delete: [
    "~/Library/Cableguys/ShaperBox3/",
    "~/Library/Preferences/de.cableguys.shaperbox3.plist", # Contains license info
  ]
end
