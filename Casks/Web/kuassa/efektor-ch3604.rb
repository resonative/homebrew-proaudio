cask "efektor-ch3604" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=824"
  name "Kuassa Efektor CH3604"
  desc "Chorus FX engine"
  homepage "https://www.kuassa.com/products/efektor-ch3604-chorus/"

  auto_updates false

  pkg "EfektorCH3604_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorCH3604*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorCH3604/",
    "~/Music/Kuassa/Settings/EfektorCH3604.setting",
  ]
end
