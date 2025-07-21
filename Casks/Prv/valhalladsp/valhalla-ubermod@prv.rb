cask "valhalla-ubermod@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.2.8"
  sha256 "864a803aa8a5f590182cdacaeebeca04912191355f2aa1752e0640b42e18905a"

  url "#{prv_archive_url}/v/valhalla-ubermod/v#{version}/ValhallaUberModOSX_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "ValhallaDSP Valhalla UberMod"
  desc "Multi-tap delay with modulation"
  homepage "https://valhalladsp.com/shop/delay/valhalla-uber-mod/"

  auto_updates false

  pkg "ValhallaUberModOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.UberMod.pkg.*"

  # zap delete: "~/Library/Audio/Presets/Valhalla DSP, LLC/ValhallaUberMod/"
end
