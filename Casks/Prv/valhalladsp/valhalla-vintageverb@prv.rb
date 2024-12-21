cask "valhalla-vintageverb@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "4.0.5"
  sha256 "01f5c9914da09785629d7a928ae664321be26c0b59c453c46316b422d6e7c3c9"

  url "#{Utils.prv_archive_url}/v/valhalla-vintageverb/v#{version}/ValhallaVintageVerbOSX_#{version.dots_to_underscores}.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "ValhallaDSP Valhalla VintageVerb"
  desc "Classic vintage reverb models"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-vintage-verb/"

  auto_updates false

  pkg "ValhallaVintageVerbOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.vintageverb.pkg.*"

  # zap delete: "/Library/Application Support/Valhalla DSP, LLC/ValhallaVintageVerb/Presets/User/"
end
