cask "bc-fader-hub@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch('HOMEBREW_PREFIX')}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "1.1"
  sha256 "93f2448fe64659299589ff1442c90cd2d8c8cbeffed9f2f2ffc17f088da1cb42"

  url "#{Utils.prv_archive_url}/b/bc-fader-hub/v#{version}/BlueCatFaderHub.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "Blue Cat Fader Hub"
  desc "Network audio mixing and streaming"
  homepage "https://www.bluecataudio.com/Products/Product_FaderHub/"

  auto_updates false

  pkg "Install Blue Cat's Fader Hub.pkg"

  uninstall quit:    "com.bluecataudio.blue-cat-s-fader-hub",
            pkgutil: "com.bluecataudio.bluecatfaderhub.*.pkg"

  zap trash: [
    "~/Library/Preferences/Blue Cat Audio/BC Fader Hub AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC Fader Hub AU/",
    "~/Library/Preferences/Blue Cat Audio/BC Fader Hub VST/",
    "~/Library/Preferences/Blue Cat Audio/BC Fader Hub VST3/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's Fader Hub/",
  ]
end
