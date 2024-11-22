cask "madrona-labs-kaivo" do
  version "1.9.5"
  sha256 "807cd3a3c612a4d2d70f7e40ee4e43316906409a9528b6af78e48d8af43b0d71"

  url "https://madronalabs.com/media/kaivo/Kaivo#{version}.pkg"
  name "Madrona Labs Kaivo"
  desc "Semi-modular granular and physical modeling synthesizer plugin"
  homepage "https://www.madronalabs.com/products/kaivo"

  auto_updates false

  pkg "Kaivo#{version}.pkg"

  uninstall pkgutil: [
    "com.madronalabs.KaivoAU",
    "com.madronalabs.KaivoPatches",
    "com.madronalabs.KaivoVST",
  ]
end
