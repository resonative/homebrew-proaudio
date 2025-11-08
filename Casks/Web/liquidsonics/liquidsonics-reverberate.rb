cask "liquidsonics-reverberate" do
  version "3.4.5"
  sha256 "7f8944c57d750ef9ef925f37d4f68d0cb6500b74695802c20f6cdb2820ca8df5"

  url "https://downloads.liquidsonics.com/software/reverberate-3/mac/Reverberate-v#{version}-macOS.pkg"
  name "LiquidSonics Reverberate"
  desc "Convolution reverb with modulation"
  homepage "https://www.liquidsonics.com/software/reverberate-3/"

  auto_updates false

  pkg "Reverberate-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.Reverberate.standard.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Reverberate/Settings.xml"
end
