cask "liquidsonics-lustrous-plates-surround" do
  version "1.3.1"
  sha256 "550a38b9dde6a0f8ff48e0cd46f24ed096fd560b385d9accb80d790283d54c55"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/lustrous-plates/mac/Lustrous_Plates_Surround-v#{version}-macOS.pkg"
  name "LiquidSonics Cinematic Rooms Lustrous Plates Surround Edition"
  desc "Surround plate reverb"
  homepage "https://www.liquidsonics.com/software/lustrous-plates-surround/"

  auto_updates false

  pkg "Lustrous_Plates_Surround-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.LustrousPlates.surround.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Lustrous Plates Surround/Settings.xml"
end
