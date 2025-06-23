cask "ssl-download-manager" do
  version "1.4.8"
  sha256 "eba5297c3ba4c982cc7c29bb0355e15c346a0d61e8c51bd41ad0c6c79fa87930"

  url "https://eu1.download.solidstatelogic.com/Download%20Manager/SSL%20Download%20Manager-#{version}-universal.dmg"
  name "SSL Download Manager"
  desc "SSL, Harrison plugins and SSL 360 install manager"
  homepage "https://solidstatelogic.com/ssl-download-manager"

  auto_updates true

  app "SSL Download Manager.app"

  uninstall launchctl: "com.solidstatelogic.analytics",
            quit:      [
              "com.solidstatelogic.downloadmanager",
              "ssl-collector",
            ],
            delete:    [
              "~/Library/Application Support/SSL Download Manager/SSLCollector/",
              "~/Library/LaunchAgents/com.solidstatelogic.analytics.plist",
              "~/Library/Preferences/com.solidstatelogic.downloadmanager.plist",
              "~/Library/Saved Application State/com.solidsatelogic.downloadmanager.savedState/",
            ]

  zap trash: [
    "~/Library/Application Support/SSL Download Manager/",
    "~/Library/Logs/SSL Download Manager/",
  ]
end
