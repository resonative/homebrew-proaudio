cask "monkeyc-rewind" do
  version "2.5.8,bae24c2"
  sha256 "6a9b0349d35fb8f2f678153c131a5872e90b84b752f17f0f118339e474e993b9"

  url "https://monkeyc.link/rewind",
      verified: "monkeyc.link"
  name "MonkeyC Rewind"
  desc "Always-on Recorder"
  homepage "https://monkeyc.audio/pages/rewind"

  livecheck do
    cask "monkeyc-rewind"
  end

  auto_updates false
  container nested: "Rewind Mac #{version.csv.first} #{version.csv.second}.dmg"

  pkg "Rewind Mac #{version.csv.first} #{version.csv.second}.pkg",
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
