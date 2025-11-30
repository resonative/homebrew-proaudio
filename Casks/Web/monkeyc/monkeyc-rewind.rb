cask "monkeyc-rewind" do
  version "2.5.4,7ab7098"
  sha256 "3869afde55b219eab604676e36a50942948c567fb2967b546b6819676baacf71"

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
