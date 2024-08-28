cask "efektor-gainia-xt" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=952"
  name "Kuassa Efektor Gainia XT"
  desc "Mid to high gain preamp with boost"
  homepage "https://www.kuassa.com/products/efektor-gainia-xt-preamp/"

  auto_updates false

  pkg "EfektorGainiaXT_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorGainiaXT*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorGainiaXT/",
    "~/Music/Kuassa/Settings/EfektorGainiaXT.setting",
  ]
end
