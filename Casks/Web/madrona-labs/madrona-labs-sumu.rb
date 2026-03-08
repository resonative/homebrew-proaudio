cask "madrona-labs-sumu" do
  version "1.3.0"
  sha256 "20106917e9af7c9bec453713671ab8599ee768f94c7d8cea481e7688f8516fb4"

  url "https://madronalabs.com/media/sumu/Sumu#{version}.pkg"
  name "Madrona Labs Sumu"
  desc "Spectral and FM synthesis synthesizer audio plugin"
  homepage "https://www.madronalabs.com/products/sumu"

  auto_updates false

  pkg "Sumu#{version}.pkg"

  uninstall pkgutil: [
    "com.madronalabs.SumuAU",
    "com.madronalabs.SumuPatches",
    "com.madronalabs.SumuVST3",
  ]
end
