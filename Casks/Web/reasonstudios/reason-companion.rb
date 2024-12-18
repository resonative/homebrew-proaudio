cask "reason-companion" do
  version :latest
  sha256 :no_check

  url "https://nautilus.reasonstudios.com/latest_companion_installer/mac/"
  name "Reason Companion"
  desc "Steven Slate Audio software manager"
  homepage "https://www.reasonstudios.com/download-reason-companion"

  app "Reason Companion.app"

  uninstall quit:   "com.reasonstudios.nautilus",
            delete: [
              "~/Library/Caches/com.reasonstudios.nautilus/",
              "~/Library/Caches/com.reasonstudios.nautilus.ShipIt/",
              "~/Library/Caches/reason-companion-app-updater/",
              "~/Library/Preferences/com.reasonstudios.nautilus.plist",
              "~/Library/Saved Application State/com.reasonstudios.nautilus.savedState",
            ]

  zap delete: [
    "~/Library/Application Support/Reason Companion/",
    "~/Library/Logs/Reason Companion/",
  ]
end
