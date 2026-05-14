cask "sononym" do
  version "1.6.8"

  on_arm do
    sha256 "dc70864fd57382d336ef9b74d10c96b5859dc7fd40f81a84b9565979d0fea0ed"

    url "https://www.sononym.net/download/Sononym-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "43e7cac0b6f6061c786a3b1e74f1630e13f5eff3a6902e7d6de67dd1d3ce8a76"

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
