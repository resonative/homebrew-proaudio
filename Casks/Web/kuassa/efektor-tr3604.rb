cask "efektor-tr3604" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=844"
  name "Kuassa Efektor TR3604"
  desc "Tremolo FX engine"
  homepage "https://www.kuassa.com/products/efektor-tr3604-tremolo/"

  auto_updates false

  pkg "EfektorTR3604_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorTR3604*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorTR3604/",
    "~/Music/Kuassa/Settings/EfektorTR3604.setting",
  ]
end
