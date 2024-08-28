cask "efektor-gainia-td" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=949"
  name "Kuassa Efektor Gainia TD"
  desc "Thick and crunchy tube driven preamp"
  homepage "https://www.kuassa.com/products/efektor-gainia-td-preamp/"

  auto_updates false

  pkg "EfektorGainiaTD_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorGainiaTD*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorGainiaTD/",
    "~/Music/Kuassa/Settings/EfektorGainiaTD.setting",
  ]
end
