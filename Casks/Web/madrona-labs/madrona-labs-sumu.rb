cask "madrona-labs-sumu" do
  version "1.0.0"
  sha256 "f91e5e38a69017e223711805edfff627ee98f5a802ec6b45e3ad5fb2ab3adaec"

  url "https://madronalabs-earlyaccess.s3.amazonaws.com/Sumu#{version}.pkg"
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
