cask "ssl-download-manager" do
  version "1.6.10"
  sha256 "e56832df5bc61ba642ec24546ecf961522cd603e621225457fbc01141e558417"
       
  url "https://softwareupdate.solidstatelogic.com/DownloadManager/appReleases/latest/SSL%20Download%20Manager-#{version}-universal.dmg"
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
