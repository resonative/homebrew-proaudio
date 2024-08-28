cask "efektor-harmonitron" do
  version "1.0.2"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=942"
  name "Kuassa Efektor Harmonitron"
  desc "Quad engine polyphonic pitch shifter/harmonizer"
  homepage "https://www.kuassa.com/products/efektor-harmonitron-harmonizer/"

  auto_updates false

  pkg "EfektorHarmonitron_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorHarmonitron*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorHarmonitron/",
    "~/Music/Kuassa/Settings/EfektorHarmonitron.setting",
  ]
end
