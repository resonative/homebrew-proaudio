cask "trackbout-ripchord" do
  version "2.7.0"
  sha256 "77464650ba7e4643f85b2fccb3889d4645acc08d034f23849e71040951a829c4"

  url "https://trackbout.com/downloads/Ripchord%20#{version}.zip"
  name "Trackbout Ripchord"
  desc "Chord sequencer"
  homepage "https://trackbout.com/"

  artifact "Ripchord #{version}/Mac/AU (for Logic only)/Ripchord.component", target: "/Library/Audio/Plug-Ins/Components/Ripchord.component"
  artifact "Ripchord #{version}/Mac/VST3/Ripchord.vst3", target: "/Library/Audio/Plug-Ins/VST3/Ripchord.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/Components/Ripchord.component",
    "/Library/Audio/Plug-Ins/VST3/Ripchord.vst3",
  ]

  zap delete: "~/Library/Application Support/Trackbout/Ripchord/Ripchord.config"
end
