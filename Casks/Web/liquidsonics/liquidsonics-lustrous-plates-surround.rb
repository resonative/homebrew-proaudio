cask "liquidsonics-lustrous-plates-surround" do
  version "1.3.7"
  sha256 "0581cda2a4ab758adc831278bd675c8df121e21a7f1fddbf0605afe90b6bf3da"

  url "https://www.liquidsonics.com/dl/serve.php?link=https://downloads.liquidsonics.com/software/lustrous-plates/mac/Lustrous_Plates_Surround-v#{version}-macOS.pkg"
  name "LiquidSonics Cinematic Rooms Lustrous Plates Surround Edition"
  desc "Surround plate reverb"
  homepage "https://www.liquidsonics.com/software/lustrous-plates-surround/"

  auto_updates false

  pkg "Lustrous_Plates_Surround-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.LustrousPlates.surround.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Lustrous Plates Surround/Settings.xml"
end
