cask "valhalla-shimmer@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.3.0"
  sha256 "4edef00e42f6b8d265322d4b3e4c83fb674d816ab447e42dc425da40fb841853"

  url "#{prv_archive_url}/v/valhalla-shimmer/v#{version}/ValhallaShimmerOSX_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "ValhallaDSP Valhalla Shimmer"
  desc "Shimmer reverb"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-shimmer/"

  auto_updates false

  pkg "ValhallaShimmerOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.Shimmer.pkg.*"
end
