cask "efektor-moon-muffin" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=990"
  name "Kuassa Efektor Moon Muffin"
  desc "Big Sustainer Fuzz"
  homepage "https://www.kuassa.com/products/efektor-moon-muffin-fuzz/"

  auto_updates false

  pkg "EfektorMoonMuffin_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorMoonMuffin*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorMoonMuffin/",
    "~/Music/Kuassa/Settings/EfektorMoonMuffin.setting",
  ]
end
