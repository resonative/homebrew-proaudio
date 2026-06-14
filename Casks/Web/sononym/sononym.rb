cask "sononym" do
  version "1.6.11"

  on_arm do
    sha256 "bfd4f0aa56be3c337ab7b53e0e8074bc60c9ee0326d9cf63fb791408f3f4d7bb"

    url "https://www.sononym.net/download/Sononym-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "11d89c7a399dd1a73bf38b4890ea72cad16c497967632b623703cd5d91763e43"

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
