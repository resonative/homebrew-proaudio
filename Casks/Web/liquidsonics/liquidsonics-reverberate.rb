cask "liquidsonics-reverberate" do
  version "3.4.3"
  sha256 "94f6cc28683bb5d531f0e2484e0424c47f0e9d43f8bed11b5eeba20110613b48"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/reverberate-3/mac/Reverberate-v#{version}-macOS.pkg"
  name "LiquidSonics Reverberate"
  desc "Convolution reverb with modulation"
  homepage "https://www.liquidsonics.com/software/reverberate-3/"

  auto_updates false

  pkg "Reverberate-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.Reverberate.standard.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Reverberate/Settings.xml"
end
