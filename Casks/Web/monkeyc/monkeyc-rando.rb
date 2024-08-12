cask "monkeyc-rando" do
  version "1.4.0"
  sha256 "1eb84a124ffdf9f521355a3f17dff79b213a227a5d847a3929a3135eff89e3ff"

  url "https://monkeyc.link/rando",
      verified: "monkeyc.link/"
  name "MonkeyC Rando"
  desc "Randomizing sampler"
  homepage "https://monkeyc.audio/pages/rando"

  livecheck do
    cask "monkeyc-rando"
  end

  auto_updates false
  depends_on macos: ">= :catalina"
  container nested: "Rando Mac 1.4.0 c5feb2b.dmg"

  pkg "Rando Mac 1.4.0 c5feb2b.pkg"

  # need to add quit
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
