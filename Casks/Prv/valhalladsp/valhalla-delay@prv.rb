cask "valhalla-delay@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "3.0.0"
  sha256 "1356a1c9b1ad324783df632b23fe0a6f54acfc56af3bc3467b03f709935a871c"

  url "#{Utils.prv_archive_url}/v/valhalla-delay/v#{version}/ValhallaDelayOSX_#{version.dots_to_underscores}v14.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "ValhallaDSP Valhalla Delay"
  desc "Multi-mode delay"
  homepage "https://valhalladsp.com/shop/delay/valhalladelay/"

  auto_updates false

  pkg "ValhallaDelayOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.delay.pkg.*"

  # zap delete: "/Library/Application Support/Valhalla DSP, LLC/ValhallaDelay/Presets/User/"
end
