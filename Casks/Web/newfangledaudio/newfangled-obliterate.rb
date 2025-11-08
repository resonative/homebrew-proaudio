cask "newfangled-obliterate" do
  version "1.1.0"
  sha256 "11d662f9e1a22a0207488d175a43838f9b9cdbd20a91c91e13e721843a4875e8"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Obliterate/Obliterate-#{version}-osx-installer.dmg"
  name "Newfangled Audio Obliterate"
  desc "OTT distortion filter"
  homepage "https://www.newfangledaudio.com/obliterate"

  auto_updates false

  installer script: {
    executable: "Obliterate-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Obliterate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Obliterate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Obliterate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Obliterate.aaxplugin",
            ],
            trash:  "~/Music/Newfangled Audio/Obliterate/"
end
