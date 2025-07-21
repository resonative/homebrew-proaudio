cask "valhalla-plate@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.6.8"
  sha256 "282dadb51ca7f335e20c1c3389a18475307dd7df7723d5f509762ca16d869a40"

  url "#{prv_archive_url}/v/valhalla-plate/v#{version}/ValhallaPlateOSX_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "ValhallaDSP Valhalla Plate"
  desc "Plate reverb"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-plate/"

  auto_updates false

  pkg "ValhallaPlateOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.Plate.pkg.*"

  # zap delete: "/Library/Application Support/Valhalla DSP, LLC/ValhallaPlate/Presets/User/"
end
