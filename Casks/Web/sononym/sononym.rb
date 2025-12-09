cask "sononym" do
  version "1.6.3"

  on_arm do
    sha256 "6034bf995fc4501dbcf3dfea17c9c3780b6ba2409803d5e902b6d28e51d61cc0"

    url "https://www.sononym.net/download/Sononym-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "ee0b3e77420c2bbb82bf7420fcf0ea79e5c765f5e19a4b8cc59543745ebe04fe"

    url "https://www.sononym.net/download/Sononym-#{version}.dmg"
  end

  name "Sononym"
  desc "Audio sample manager"
  homepage "https://www.sononym.net/"

  auto_updates false

  app "Sononym.app"

  uninstall quit:   "com.sononym.sononym",
            delete: "~/Library/Saved Application State/com.sononym.sononym.savedState/"

  zap trash: [
    "~/Library/Application Support/Sononym/",
    "~/Library/Logs/Sononym Crawler.log",
    "~/Library/Logs/Sononym/",
    "~/Library/Preferences/com.sononym.sononym.plist",
  ]
end
