cask "bc-connector@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.4"
  sha256 "7abf1e2302c4579a45c5fe90725e5a5cc7aca3e3381676d5aa58357991040297"

  url "#{prv_archive_url}/b/bc-connector/v#{version}/BlueCatConnector.dmg",
      verified: prv_archive_url.to_s
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
