cask "auto-tune-central" do
  version "1.5.1"
  sha256 "b085426eee16e389e1f809ceabeb66500b97281c92a0f6c553ef596ca2445bda"

  url "https://antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/Auto_Tune_Central_#{version}_universal.dmg",
      verified: "antares.sfo2.cdn.digitaloceanspaces.com/"
  name "Auto-Tune Central"
  desc "Antares plugin installation manager"
  homepage "https://www.antarestech.com/software-download"

  app "Auto-Tune Central.app"

  uninstall quit:   "com.Antares.AutoTuneCentral",
            delete: [
              "~/Library/Caches/com.reasonstudios.nautilus/",
              "~/Library/Caches/com.reasonstudios.nautilus.ShipIt/",
              "~/Library/Caches/reason-companion-app-updater/",
              "~/Library/Preferences/com.reasonstudios.nautilus.plist",
              "~/Library/Saved Application State/com.reasonstudios.nautilus.savedState",
            ]

  # zap delete: [
  #   "~/Library/Application Support/Reason Companion/",
  #   "~/Library/Logs/Reason Companion/",
  # ]
  caveats "At launch, Auto-Tune Central will install Antares Central and codemeter components"
end
