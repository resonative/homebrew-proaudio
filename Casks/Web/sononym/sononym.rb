cask "sononym" do
  version "1.6.7"

  on_arm do
    sha256 "9d6eff1144e73db24343917a9e47dcc3bf5ef1d1d1166df766555409b1183091"

    url "https://www.sononym.net/download/Sononym-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "65f1866b38424e34b8d8f04d8eb8bff9a43cbdb83388d9ee67188f99f60b222c"

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
