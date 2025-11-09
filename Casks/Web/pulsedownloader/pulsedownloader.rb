cask "pulsedownloader" do
  on_arm do
    version "40.4.26"
    sha256 "41b4a294808a3e749ad2c8c94c10faed24930a1b8f25da67ddb84ae1c4610261"

    url "https://pulse-client.nyc3.digitaloceanspaces.com/dist/Pulse-#{version}-arm64.dmg",
        verified: "digitaloceanspaces.com/"
  end
  on_intel do
    version "40.4.26"
    sha256 "3269acdf728d439733630c62c1f5404a4082ee70ca948c19af724bdbaa03c38c"

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
