cask "monkeyc-rando" do
  version :latest
  sha256 :no_check

  url "https://monkeyc.link/rando",
      verified: "monkeyc.link"
  name "MonkeyC Rando"
  desc "Randomizing sampler"
  homepage "https://monkeyc.audio/pages/rando"

  auto_updates false
  depends_on macos: ">= :catalina"
  container nested: "Rando 2 MacOS.dmg"

  pkg "Rando 2 MacOS.pkg"

  uninstall quit:    "com.monkeycaudio.rando2",
            pkgutil: "com.monkeycaudio.rando2.*",
            delete:  [
              "~/Library/Caches/com.monkeycaudio.rando2/",
              "~/Library/Caches/Rando 2/",
              "~/Library/HTTPStorages/com.monkeycaudio.rando2/",
              "~/Library/HTTPStorages/com.monkeycaudio.rando2.binarycookies",
              "~/Library/Preferences/com.monkeycaudio.rando2.plist",
              "~/Library/WebKit/com.monkeycaudio.rando2/",
            ]

  zap trash: [
    "~/Library/Application Support/Monkey C. Audio/Rando 2/database.db",
    "~/Library/Application Support/Monkey C. Audio/Rando 2/Packs/Audiotent.com Sampler/",
    "~/Library/Application Support/Monkey C. Audio/Rando 2/Rando 2.settings",
    "~/Library/Application Support/Monkey C. Audio/Rando 2/Settings.xml",
  ]
end
