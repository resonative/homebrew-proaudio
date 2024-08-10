cask "monkeyc-rewind" do
  version "2.5.0"
  sha256 "1eb84a124ffdf9f521355a3f17dff79b213a227a5d847a3929a3135eff89e3ff"

  url "https://monkeyc.link/rewind",
      verified: "monkeyc.link"
  name "MonkeyC Rewind"
  desc "Always-on Recorder"
  homepage "https://monkeyc.audio/pages/rewind"

  livecheck do
    cask "monkeyc-rewind"
  end

  auto_updates false
  depends_on macos: ">= :catalina"
  container nested: "Rewind Mac 2.5.0 7c5b71e.dmg"

  pkg "Rewind Mac 2.5.0 7c5b71e.pkg",
      choices: [
      {
        "choiceIdentifier" => "installer_choice_5", # Driver
        "choiceAttribute"  => "selected",
        "attributeSetting" => 0,
      },
    ]

  # need to add quit
  uninstall quit: "com.monkeycaudio.rando",
            pkgutil: [
              "com.monkeycaudio.rewind.aax",
              "com.monkeycaudio.rewind.au",
              "com.monkeycaudio.rewind.lame",
              "com.monkeycaudio.rewind.standalone",
              "com.monkeycaudio.rewind.vst3",
              "com.monkeycaudio.rewindmidifx.*",
            ]
end
