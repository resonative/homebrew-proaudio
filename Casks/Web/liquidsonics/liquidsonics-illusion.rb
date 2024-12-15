cask "liquidsonics-illusion" do
  version "1.4.1"
  sha256 "37452391e773093de05a05940b61311b58bb0c0e47872294a172a3d5a5f0b540"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/illusion/mac/Illusion-v#{version}-macOS.pkg"
  name "LiquidSonics Illusion"
  desc "Syethized Fusion-IR reverb"
  homepage "https://www.liquidsonics.com/software/illusion/"

  auto_updates false

  pkg "Illusion-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.Illusion.standard.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Illusion/Settings.xml"
end
