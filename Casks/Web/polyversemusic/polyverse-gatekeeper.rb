cask "polyverse-gatekeeper" do
  version "1.3.13"
  sha256 "dd79b805a212078a20379f1cf6409e4246ddd8fe550478dffc43003c10122208"

  url "https://polyversemusic.com/downloads/releases/gatekeeper/InfectedMushroom-Gatekeeper-V#{version}.dmg"
  name "Polyverse Gatekeeper"
  desc "Sample accurate audio gate"
  homepage "https://polyversemusic.com/products/gatekeeper/"

  auto_updates false

  pkg "Gatekeeper Setup.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.gatekeeper*"

  zap delete: [
    "~/Library/Polyverse/Gatekeeper/Gatekeeper-Preferences.prf",
    "~/Library/Polyverse/Gatekeeper/key.pvkey",
    # "~/Library/Polyverse/Gatekeeper/GatekeeperPresets.ppb",
  ]
end
