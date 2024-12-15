cask "liquidsonics-hd-cart" do
  version "1.3.3"
  sha256 "5734bd8fa9e8a7277b97516598c62550f107e494eeac80ee2bff97c62374abdf"

  url "https://us-east-1.linodeobjects.com/reverbfoundry/downloads/hd_cart/mac/HD_Cart-v#{version}-macOS.pkg"
  name "LiquidSonics HD Cart"
  desc "Vintage digital reverb with Lexicon inspired sound"
  homepage "https://www.liquidsonics.com/software/hd-cart/"

  auto_updates false

  pkg "HD_Cart-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.reverbfoundry.pkg.HDCart.*"

  zap delete: "~/Library/Application Support/Reverb Foundry/HD Cart/Settings.xml"
end
