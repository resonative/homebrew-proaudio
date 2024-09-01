cask "sononym" do
  version "1.5.5"

  on_arm do
    sha256 "a5a8b5dcf191e83ac1324f542dba5a980a32765310bbf657488d2aec61ae0463"

    url "https://www.sononym.net/download/Sononym-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "901b7ccb08eefb5f4a478d472fe5b2b244a072b6cb55e4ba350f22b752c0241d"

    url "https://www.sononym.net/download/Sononym-#{version}.dmg"
  end

  name "Sononym"
  desc "Audio sample manager"
  homepage "https://www.sononym.net/"

  auto_updates false

  app "Sononym.app"

  uninstall quit:   "com.sononym.sononym",
            delete: "~/Library/Saved Application State/com.sononym.sononym.savedState/",
            trash:  [
              "~/Library/Logs/Sononym Crawler.log",
              "~/Library/Logs/Sononym/",
            ]

  zap trash: [
    "~/Library/Application Support/Sononym/",
    "~/Library/Preferences/com.sononym.sononym.plist",
  ]
end
