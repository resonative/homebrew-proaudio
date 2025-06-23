cask "liquidsonics-lustrous-plates-surround" do
  version "1.3.3"
  sha256 "b5ac4c083a50dfeceae583ae5fab1e677d57222ea6cbffb3fc1e9e39d298e863"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/lustrous-plates/mac/Lustrous_Plates_Surround-v#{version}-macOS.pkg"
  name "LiquidSonics Cinematic Rooms Lustrous Plates Surround Edition"
  desc "Surround plate reverb"
  homepage "https://www.liquidsonics.com/software/lustrous-plates-surround/"

  auto_updates false

  pkg "Lustrous_Plates_Surround-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.LustrousPlates.surround.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Lustrous Plates Surround/Settings.xml"
end
