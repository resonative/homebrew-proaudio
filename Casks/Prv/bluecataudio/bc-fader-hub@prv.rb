cask "bc-fader-hub@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.3"
  sha256 "c0220bcd054c2181986b9e78791f842d87647f4a23605f53d82ba84a811d36b7"

  url "#{prv_archive_url}/b/bc-fader-hub/v#{version}/BlueCatFaderHub.dmg",
      verified: prv_archive_url.to_s
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
