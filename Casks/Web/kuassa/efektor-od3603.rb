cask "efektor-od3603" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=838"
  name "Kuassa Efektor OD3603"
  desc "Overdrive FX engine"
  homepage "https://www.kuassa.com/products/efektor-od3603-overdrive/"

  auto_updates false

  pkg "EfektorOD3603_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorOD3603*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorOD3603/",
    "~/Music/Kuassa/Settings/EfektorOD3603.setting",
  ]
end
