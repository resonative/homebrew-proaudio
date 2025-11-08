cask "auto-tune-central" do
  version "1.8.2,6463"
  sha256 "e2c39e9dff72977c9b126166447aaeabea1b9ef05d3a6472e5ae7cd68f81091d"

  url "https://antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/Auto_Tune_Central_#{version.csv.first}_universal_x#{version.csv.second}.dmg",
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
