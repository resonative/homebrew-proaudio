cask "liquidsonics-reverberate" do
  version "3.4.2"
  sha256 "1aca6b3c19bf463a5264158d816fe2c0b53881b19adcee880c48e0fc7005f746"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/reverberate-3/mac/Reverberate-v#{version}-macOS.pkg"
  name "LiquidSonics Reverberate"
  desc "Convolution reverb with modulation"
  homepage "https://www.liquidsonics.com/software/reverberate-3/"

  auto_updates false

  pkg "Reverberate-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.Reverberate.standard.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Reverberate/Settings.xml"
end
