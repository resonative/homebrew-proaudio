cask "polyverse-manipulator" do
  version "1.4.9"
  sha256 "0e3263853848f64c123b6aec9ed94e174945928b934b83c8b907737db2610f33"

  url "https://polyversemusic.com/downloads/releases/manipulator/InfectedMushroom-Manipulator-V#{version}.dmg"
  name "Polyverse Manipulator"
  desc "Creative vocal effect processor"
  homepage "https://polyversemusic.com/products/manipulator/"

  auto_updates false

  pkg "Manipulator.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.manipulator*"

  zap delete: [
    "~/Library/Polyverse/Manipulator/Manipulator-Preferences.prf",
    "~/Library/Polyverse/Manipulator/key.pvkey",
    # "~/Library/Polyverse/Manipulator/Manipulator-Presets.mpb",
  ]
end
