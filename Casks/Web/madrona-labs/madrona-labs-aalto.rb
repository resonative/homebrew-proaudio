cask "madrona-labs-aalto" do
  version "1.9.5"
  sha256 "3b13462b8b010722a89523083a48a70a4c02767465e0f39470dfd36fe2ce6f9c"

  url "https://madronalabs.com/media/aalto/Aalto#{version}.pkg"
  name "Madrona Labs Aalto"
  desc "Semi-modular synth plugin"
  homepage "https://www.madronalabs.com/products/aalto"

  auto_updates false

  pkg "Aalto#{version}.pkg"

  uninstall pkgutil: [
    "com.madronalabs.AaltoAU",
    "com.madronalabs.AaltoPatches",
    "com.madronalabs.AaltoVST",
  ]
end
