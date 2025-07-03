cask "polyverse-filterverse" do
  version "1.2.0"
  sha256 "f9520fa5e79eb884f970dfb9fd07304fc97b0d0af34369208711083835324c7f"

  url "https://polyversemusic.com/downloads/releases/filterverse/Polyverse-Filterverse-V#{version}.dmg"
  name "Polyverse Filterverse"
  desc "Multi-mode filter"
  homepage "https://polyversemusic.com/products/filterverse"

  auto_updates false

  pkg "Filterverse Setup.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.filterverse*"

  zap delete: [
    "~/Library/Polyverse/Filterverse/favorites.txt",
    "~/Library/Polyverse/Filterverse/Filterverse-Preferences.prf",
    "~/Library/Polyverse/Filterverse/key.pvkey",
    "~/Library/Polyverse/Filterverse/Presets/Factory/",
  ]
end
