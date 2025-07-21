cask "bc-mb-7-mixer@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.6"
  sha256 "9ba1ccf4160e4447881829a8a0dd3ed9e9fba005512fac605dd46cef182b24ff"

  url "#{prv_archive_url}/b/bc-mb-7-mixer/v#{version}/BlueCatMB7Mixer.dmg",
      verified: prv_archive_url.to_s
  name "Blue Cat MB-7 Mixer"
  desc "Mult-band plugin host"
  homepage "https://www.bluecataudio.com/Products/Product_MB7Mixer/"

  auto_updates false

  pkg "Install Blue Cat's MB-7 Mixer 2.pkg"

  uninstall pkgutil: "com.bluecataudio.bluecatmb7mixer.*.pkg"

  zap trash: [
    "~/Library/Preferences/BC MB-7 Mixer 2 AAX(Dual)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 AAX(Mono)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 AAX(Stereo)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 AU(Dual)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 AU(Mono)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 AU(Stereo)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 VST(Dual)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 VST(Mono)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 VST(Stereo)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 VST3(Dual)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 VST3(Mono)/",
    "~/Library/Preferences/BC MB-7 Mixer 2 VST3(Stereo)/",
    "~/Library/Preferences/Blue Cat's MB-7 Mixer 3/",
  ]
end
