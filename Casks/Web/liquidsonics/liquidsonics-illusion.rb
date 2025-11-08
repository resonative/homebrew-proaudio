cask "liquidsonics-illusion" do
  version "1.4.6"
  sha256 "ff0df30d043598764c4766ca668ae54a0e16e1bca1f61dd21348e511ef0b2ff1"

  url "https://downloads.liquidsonics.com/software/illusion/mac/Illusion-v#{version}-macOS.pkg"
  name "LiquidSonics Illusion"
  desc "Syethized Fusion-IR reverb"
  homepage "https://www.liquidsonics.com/software/illusion/"

  auto_updates false

  pkg "Illusion-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.Illusion.standard.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Illusion/Settings.xml"
end
