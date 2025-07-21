cask "valhalla-delay@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.0.5"
  sha256 "cbf31b056b6bc57c7979488cdb1325507ac37796a06d507bf89d621414ea7451"

  url "#{prv_archive_url}/v/valhalla-delay/v#{version}/ValhallaDelayOSX_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "ValhallaDSP Valhalla Delay"
  desc "Multi-mode delay"
  homepage "https://valhalladsp.com/shop/delay/valhalladelay/"

  auto_updates false

  pkg "ValhallaDelayOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.delay.pkg.*"

  # zap delete: "/Library/Application Support/Valhalla DSP, LLC/ValhallaDelay/Presets/User/"
end
