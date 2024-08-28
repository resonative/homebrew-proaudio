cask "efektor-ds3603" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=830"
  name "Kuassa Efektor DS3603"
  desc "Distortion FX engine"
  homepage "https://www.kuassa.com/products/efektor-ds3603-distortion"

  auto_updates false

  pkg "EfektorDS3603_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorDS3603*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorDS3603/",
    "~/Music/Kuassa/Settings/EfektorDS3603.setting",
  ]
end
