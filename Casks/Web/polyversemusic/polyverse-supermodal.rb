cask "polyverse-supermodal" do
  version "1.0.0"
  sha256 "23bbcd7fff64edd8ab45d75abebc6d67363bdad84745cc117aa666201f707a17"

  url "https://polyversemusic.com/downloads/releases/supermodal/Polyverse-Supermodal-V#{version}.dmg"
  name "Polyverse Supermodal"
  desc "Morphable filter"
  homepage "https://polyversemusic.com/products/supermodal/"

  auto_updates false

  pkg "Supermodal Setup.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.supermodal*"

  zap delete: [
    "~/Library/Polyverse/Supermodal/Supermodal-Preferences.prf",
    "~/Library/Polyverse/Supermodal/key.pvkey",
    # "~/Library/Polyverse/Supermodal/SupermodalPresets.ppb",
  ]
end
