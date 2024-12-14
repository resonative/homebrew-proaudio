cask "polyverse-filterverse" do
  version "1.0.1"
  sha256 "e01c4a0a1b746a690b71408f700211ff9a789927d90806320bc55a2fb30be984"

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
