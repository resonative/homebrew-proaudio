cask "liquidsonics-hd-cart" do
  version "1.3.8"
  sha256 "2726addf08d87fcbff87910e936d3412edd85a658adf58f07df783bbc8a2b2d0"

  url "https://downloads.liquidsonics.com/software/hd-cart/mac/HD_Cart-v#{version}-macOS.pkg"
  name "LiquidSonics HD Cart"
  desc "Vintage digital reverb with Lexicon inspired sound"
  homepage "https://www.liquidsonics.com/software/hd-cart/"

  auto_updates false

  pkg "HD_Cart-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.reverbfoundry.pkg.HDCart.*"

  zap delete: "~/Library/Application Support/Reverb Foundry/HD Cart/Settings.xml"
end
