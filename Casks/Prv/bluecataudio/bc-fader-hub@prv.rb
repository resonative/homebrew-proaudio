cask "bc-fader-hub@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.22"
  sha256 "625052896397a0268d4faaea6b1242d7e68bacd39a155964f12d89c7e07016d4"

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
