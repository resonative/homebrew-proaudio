cask "efektor-whammo" do
  version "1.0.4"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=964"
  name "Kuassa Efektor Whammo"
  desc "Pitch Shifting/Bending FX"
  homepage "https://www.kuassa.com/products/efektor-whammo-pitch-shifter/"

  auto_updates false

  pkg "EfektorWhammo_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorWhammo*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorWhammo/",
    "~/Music/Kuassa/Settings/EfektorWhammo.setting",
  ]
end
