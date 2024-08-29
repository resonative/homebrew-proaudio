cask "ssl-download-manager" do
  version "1.3.7"
  sha256 "b1c90cb9e373492101729d14953615e43a983ac7bafc031ae4bae17b06737e4a"

  url "https://s3.eu-west-1.amazonaws.com/eu1.download.solidstatelogic.com/Download%20Manager/SSL_Download_Manager-#{version}-universal%5B1%5D.dmg",
      verified: "amazonaws.com/"
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
