cask "valhalla-futureverb@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.2"
  sha256 "e4740fab84f110166ad70d02b514289b97c86bc682f27ec0c16f5f4262d55e42"

  url "#{prv_archive_url}/v/valhalla-futureverb/v#{version}/ValhallaFutureVerbOSX_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "ValhallaDSP FutureVerb"
  desc "Reverb"
  homepage "https://valhalladsp.com/shop/reverb/valhallafutureverb/"

  auto_updates false

  pkg "ValhallaFutureVerbOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.FutureVerb.pkg.*"
end
