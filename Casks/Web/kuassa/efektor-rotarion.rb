cask "efektor-rotarion" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=980"
  name "Kuassa Efektor Rotarion"
  desc "Rotary Effect"
  homepage "https://www.kuassa.com/products/efektor-rotarion-rotary-effect/"

  auto_updates false

  pkg "EfektorRotarion_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorRotarion*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorRotarion/",
    "~/Music/Kuassa/Settings/EfektorRotarion.setting",
  ]
end
