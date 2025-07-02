cask "bc-fader-hub@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "1.2"
  sha256 "8268ae3e1bf4084726cac21e5013b27c1a5f92472e8087d15eda905572e5a78f"

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
