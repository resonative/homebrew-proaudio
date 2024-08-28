cask "efektor-ph3605" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=840"
  name "Kuassa Efektor PH3605"
  desc "Phaser FX engine"
  homepage "https://www.kuassa.com/products/efektor-ph3605-phaser/"

  auto_updates false

  pkg "EfektorPH3605_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorPH3605*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorPH3605/",
    "~/Music/Kuassa/Settings/EfektorPH3605.setting",
  ]
end
