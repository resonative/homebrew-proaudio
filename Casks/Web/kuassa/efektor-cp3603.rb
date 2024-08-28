cask "efektor-cp3603" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=826"
  name "Kuassa Efektor CP3603"
  desc "Compressor FX Engine"
  homepage "https://www.kuassa.com/products/efektor-cp3603-compressor/"

  auto_updates false

  pkg "EfektorCP3603_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorCP3603*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorCP3603/",
    "~/Music/Kuassa/Settings/EfektorCP3603.setting",
  ]
end
