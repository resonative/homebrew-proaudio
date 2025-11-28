cask "sononym" do
  version "1.6.1"

  on_arm do
    sha256 "dca9361da632de775c9121de8210c9fbe872cbcfb9909e83e5c6d58d35d42d37"

    url "https://www.sononym.net/download/Sononym-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "01aa45e35c530d96edfc261ac2a56757f766b4ba9ffcb7ad9ce6410b53b0ab7d"

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
