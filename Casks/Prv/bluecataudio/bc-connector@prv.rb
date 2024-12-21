cask "bc-connector@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch('HOMEBREW_PREFIX')}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "1.31"
  sha256 "648ea1ede279ee5ccb2afdfbdc8b5beb7bb860f7696969cd0f898b1423c4c473"

  url "#{Utils.prv_archive_url}/b/bc-connector/v#{version}/BlueCatConnector.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "Blue Cat Connector"
  desc "Network audio MIDI and streaming plugin"
  homepage "https://www.bluecataudio.com/Products/Product_Connector/"

  auto_updates false

  pkg "Install Blue Cat's Connector.pkg"

  uninstall pkgutil: "com.bluecataudio.bluecatconnector.*.pkg"

  zap trash: [
    "~/Library/Preferences/Blue Cat Audio/BC Connector AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC Connector AU/",
    "~/Library/Preferences/Blue Cat Audio/BC Connector VST/",
    "~/Library/Preferences/Blue Cat Audio/BC Connector VST3/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's Connector/",
  ]
end
