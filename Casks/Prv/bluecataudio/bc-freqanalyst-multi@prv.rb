cask "bc-freqanalyst-multi@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.42"
  sha256 "963ef806680907a567e203bc7c2b3185b6a2bd83ab432702e7065f7b2716a71b"

  url "#{prv_archive_url}/b/bc-freqanalyst-multi/v#{version}/BlueCatFreqAnalystMulti.dmg",
      verified: prv_archive_url.to_s
  name "Blue Cat FreqAnalyst Multi"
  desc "Multi-channel frequency analysis"
  homepage "https://www.bluecataudio.com/Products/Product_FreqAnalystMulti/"

  auto_updates false

  pkg "Install Blue Cat's FreqAnalyst Multi 2.pkg"

  uninstall pkgutil: "com.bluecataudio.bluecatfreqanalystmulti.*.pkg"

  zap trash: [
    "~/Library/Preferences/Blue Cat Audio/BC FreqAnalyst Multi 2 AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC FreqAnalyst Multi 2 AU/",
    "~/Library/Preferences/Blue Cat Audio/BC FreqAnalyst Multi 2 VST/",
    "~/Library/Preferences/Blue Cat Audio/BC FreqAnalyst Multi 2 VST3/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's FreqAnalyst Multi 2/",
  ]
end
