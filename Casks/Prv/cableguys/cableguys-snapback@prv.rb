cask "cableguys-snapback@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "1.0.1"
  sha256 "a5765fe2730c15e41dd2f741fac82982ef7ea3fdf3a4f876bcb14158398e5176"

  url "#{Utils.prv_archive_url}/c/cableguys-snapback/v#{version}/Cableguys-Snapback.zip",
      verified: Utils.prv_archive_url("verified").to_s
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
