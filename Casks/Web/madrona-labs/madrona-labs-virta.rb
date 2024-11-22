cask "madrona-labs-virta" do
  version "1.9.5"
  sha256 "6ea6b380c6446712099e53e302a0643dc47b4686100570c58340bba0f90ecf4c"

  url "https://madronalabs.com/media/virta/Virta#{version}.pkg"
  name "Madrona Labs Virta"
  desc "Patchable vocoder audio plugin"
  homepage "https://www.madronalabs.com/products/virta"

  auto_updates false

  pkg "Virta#{version}.pkg"

  uninstall pkgutil: [
    "com.madronalabs.VirtaAU",
    "com.madronalabs.VirtaPatches",
    "com.madronalabs.VirtaVST",
  ]
end
