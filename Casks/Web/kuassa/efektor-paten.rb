cask "efektor-paten" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=1005"
  name "Kuassa Efektor PAten"
  desc "Precision 10-Band Graphic Equalizer"
  homepage "https://www.kuassa.com/products/efektor-paten-graphic-equalizer/"

  auto_updates false

  pkg "EfektorPAten_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorPAten*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorPAten/",
    "~/Music/Kuassa/Settings/EfektorPAten.setting",
  ]
end
