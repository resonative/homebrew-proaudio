cask "efektor-fz3603" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=834"
  name "Kuassa Efektor FZ3603"
  desc "Fuzz FX engine"
  homepage "https://www.kuassa.com/products/efektor-fz3603-fuzz/"

  auto_updates false

  pkg "EfektorFZ3603_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorFZ3603*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorFZ3603/",
    "~/Music/Kuassa/Settings/EfektorFZ3603.setting",
  ]
end
