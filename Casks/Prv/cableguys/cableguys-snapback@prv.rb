cask "cableguys-snapback@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.1.1"
  sha256 "2ab0f8f85bcfa9419f8b6cc016766120b77ca070b3166ba3a785068d7b775d06"

  url "#{prv_archive_url}/c/cableguys-snapback/v#{version}/Cableguys-Snapback-#{version}.zip",
      verified: prv_archive_url.to_s
  name "Cableguys Snapback"
  desc "Sample trigger"
  homepage "https://www.cableguys.com/snapback"

  auto_updates false

  pkg "Cableguys - Snapback #{version}/Mac/Cableguys - Snapback #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.snapback.*"

  zap delete: [
    "~/Library/Cableguys/Snapback/",
    "~/Library/Preferences/de.cableguys.snapback.plist", # Contains license info
  ]
end
