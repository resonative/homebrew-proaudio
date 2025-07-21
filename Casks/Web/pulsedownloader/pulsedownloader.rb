cask "pulsedownloader" do
  on_arm do
    version "40.4.20"
    sha256 "a408518a2c69142f682b26a755b59e40d8ee87cab7462a3e666535983e8eebce"

    url "https://pulse-client.nyc3.digitaloceanspaces.com/dist/Pulse-#{version}-arm64.dmg",
        verified: "digitaloceanspaces.com/"
  end
  on_intel do
    version "40.4.20"
    sha256 "267d5dc2d866fa5bf8d970268aea626c4b59abcb779a3156885530ad8b9c225f"

    url "https://pulse-client.nyc3.digitaloceanspaces.com/dist/Pulse-#{version}.dmg",
        verified: "digitaloceanspaces.com/"
  end

  name "Pulse Downloader"
  desc "Audio product downloader"
  homepage "https://pulsedownloader.com/"

  auto_updates true

  app "Pulse.app"

  uninstall quit:   [
              "com.pulsedownloader.client",
              "com.pulsedownloader.client.helper",
            ],
            delete: [
              "~/Library/Caches/com.pulsedownloader.client.ShipIt/",
              "~/Library/Caches/com.pulsedownloader.client/",
              "~/Library/Caches/pulse-updater/",
              "~/Library/HTTPStorages/com.pulsedownloader.client/",
            ]

  zap delete: [
    "~/Library/Application Support/Pulse",
    "~/Library/Logs/Pulse",
    "~/Library/Preferences/com.pulsedownloader.client.plist",
  ]
end
