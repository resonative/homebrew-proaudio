cask "monkeyc-rando" do
  version "2.0.6,3879757"
  sha256 "6cf95dfe5ff68fc278c3e42d3b53863d067b427cd5140dd4978380ed24dd6267"

  url "https://monkeyc.link/rando",
      verified: "monkeyc.link"
  name "MonkeyC Rando"
  desc "Randomizing sampler"
  homepage "https://monkeyc.s3.eu-central-1.amazonaws.com/Rando+#{version.csv.first}.zip"

  auto_updates false
  container nested: "Rando 2 macOS #{version.csv.first} #{version.csv.second}.dmg"

  pkg "Rando 2 macOS #{version.csv.first} #{version.csv.second}.pkg"

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
