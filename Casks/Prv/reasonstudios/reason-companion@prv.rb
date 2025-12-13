cask "reason-companion@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.0.17"
  sha256 "75b7d519651ba72529a1646590cb6681f3b8b156f5d18178e54268b94bc949d1"

  url "#{prv_archive_url}/r/reason-companion/v#{version}/Reason%20Companion%20#{version}-mac.dmg",
      verified: prv_archive_url.to_s
  name "Reason Companion"
  desc "Reason Studios software manager"
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
