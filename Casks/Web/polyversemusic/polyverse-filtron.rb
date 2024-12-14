cask "polyverse-filtron" do
  version "1.1.1"
  sha256 "d520b4dc708457d32243a3641e75ff2ffa3ccce0ddc5039e2e39486e1e38c01c"

  url "https://polyversemusic.com/downloads/releases/filtron/Polyverse-Filtron-V#{version}.dmg"
  name "Polyverse Filtron"
  desc "Morphable filter"
  homepage "https://polyversemusic.com/products/filtron/"

  auto_updates false

  pkg "Filtron Setup.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.filtron*"

  zap delete: [
    "~/Library/Polyverse/Filtron/Filtron-Preferences.prf",
    "~/Library/Polyverse/Filtron/FiltronPresets.ppb",
  ]
end
