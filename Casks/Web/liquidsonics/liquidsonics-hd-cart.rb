cask "liquidsonics-hd-cart" do
  version "1.3.6"
  sha256 "99fc3daf9afd7382afb8b62780b90d29117aa98ddc6906203542b7b55399ddc3"

  url "https://us-east-1.linodeobjects.com/reverbfoundry/downloads/hd_cart/mac/HD_Cart-v#{version}-macOS.pkg"
  name "LiquidSonics HD Cart"
  desc "Vintage digital reverb with Lexicon inspired sound"
  homepage "https://www.liquidsonics.com/software/hd-cart/"

  auto_updates false

  pkg "HD_Cart-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.reverbfoundry.pkg.HDCart.*"

  zap delete: "~/Library/Application Support/Reverb Foundry/HD Cart/Settings.xml"
end
