cask "efektor-gq3607" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=836"
  name "Kuassa Efektor GQ3607"
  desc "Graphic Equalizer FX Engine"
  homepage "hhttps://www.kuassa.com/products/efektor-gq3607-graphic-equalizer/"

  auto_updates false

  pkg "EfektorGQ3607_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorGQ3607*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorGQ3607/",
    "~/Music/Kuassa/Settings/EfektorGQ3607.setting",
  ]
end
