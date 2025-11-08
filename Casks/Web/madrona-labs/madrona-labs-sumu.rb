cask "madrona-labs-sumu" do
  version "1.1.3"
  sha256 "0cffabd2946f0685f74bf883e35f5ebb19cf05e33dac7cd87bee730e6979688e"

  url "https://madronalabs.com/media/sumu/Sumu#{version}.pkg"
  name "Madrona Labs Sumu"
  desc "Spectral and FM synthesis synthesizer audio plugin"
  homepage "https://www.madronalabs.com/products/sumu"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "Sumu#{version}.pkg"

  uninstall pkgutil: [
    "com.madronalabs.SumuAU",
    "com.madronalabs.SumuPatches",
    "com.madronalabs.SumuVST3",
  ]
end
