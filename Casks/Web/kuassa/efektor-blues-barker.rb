cask "efektor-blues-barker" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=1048"
  name "Kuassa Efektor Blues Barker"
  desc "Breaker overdrive"
  homepage "https://www.kuassa.com/products/efektor-blues-barker-breaker-overdrive/"

  auto_updates false

  pkg "EfektorBluesBarker_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorBluesBarker*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorBluesBarker/",
    "~/Music/Kuassa/Settings/EfektorBluesBarker.setting",
  ]
end
