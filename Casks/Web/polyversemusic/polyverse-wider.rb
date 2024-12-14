cask "polyverse-wider" do
  version "2.0.0"
  sha256 "68ba5dfcdab1a0c7be8d0fbf7a30cf8b9eabfc604b502b1aef46490c76e14372"

  url "https://polyversemusic.com/downloads/releases/wider/Polyverse-Wider-V#{version}.dmg"
  name "Polyverse Wider"
  desc "Mono compatible stereo widener"
  homepage "https://polyversemusic.com/products/wider/"

  auto_updates false

  pkg "Wider Setup.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.wider*"

  zap delete: "~/Library/Polyverse/Wider/Wider-Preferences.prf"
end
