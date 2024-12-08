cask "monkeyc-rando" do
  version "1.5.0"
  sha256 "65a0cd0415c59e0f4f42856fb135a187cb04125d5b0b9ada56fcb02dd3c5f95e"

  url "https://monkeyc.s3.eu-central-1.amazonaws.com/Rando+#{version}.zip",
      verified: "monkeyc.s3.eu-central-1.amazonaws.com/"
  name "MonkeyC Rando"
  desc "Randomizing sampler"
  homepage "https://monkeyc.audio/pages/rando"

  auto_updates false
  depends_on macos: ">= :catalina"
  container nested: "Rando Mac #{version} f4b6f5f.dmg"

  pkg "Rando Mac #{version} f4b6f5f.pkg"

  uninstall quit:    "com.monkeycaudio.rando",
            pkgutil: "com.monkeycaudio.rando.*"

  zap trash: [
    "~/Library/Caches/com.monkeycaudio.rando/",
    "~/Library/Caches/Rando/",
    "~/Library/HTTPStorages/com.monkeycaudio.rando/",
    "~/Library/HTTPStorages/com.monkeycaudio.rando.binarycookies",
    "~/Library/Preferences/com.monkeycaudio.rando.plist",
    "~/Library/WebKit/com.monkeycaudio.rando",
  ]
end
