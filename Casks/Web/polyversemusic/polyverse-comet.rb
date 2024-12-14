cask "polyverse-comet" do
  version "1.1.11"
  sha256 "19a977dbd5365c25a15cb73d6e754cce1c6600622ff66528e653adb1d97e4292"

  url "https://polyversemusic.com/downloads/releases/comet/Polyverse-Comet-V#{version}.dmg"
  name "Polyverse Comet"
  desc "Morphable reverb"
  homepage "https://polyversemusic.com/products/comet/"

  auto_updates false

  pkg "Comet Setup.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.comet*"

  zap delete: [
    "~/Library/Polyverse/Comet/Comet-Preferences.prf",
    "~/Library/Polyverse/Comet/key.pvkey",
    # "~/Library/Polyverse/Comet/CometPresets.ppb",
  ]
end
