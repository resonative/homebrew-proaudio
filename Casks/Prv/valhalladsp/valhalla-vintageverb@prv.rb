cask "valhalla-vintageverb@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "4.0.5"
  sha256 "01f5c9914da09785629d7a928ae664321be26c0b59c453c46316b422d6e7c3c9"

  url "#{prv_archive_url}/v/valhalla-vintageverb/v#{version}/ValhallaVintageVerbOSX_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "ValhallaDSP Valhalla VintageVerb"
  desc "Classic vintage reverb models"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-vintage-verb/"

  auto_updates false

  pkg "ValhallaVintageVerbOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.vintageverb.pkg.*"

  # zap delete: "/Library/Application Support/Valhalla DSP, LLC/ValhallaVintageVerb/Presets/User/"
end
