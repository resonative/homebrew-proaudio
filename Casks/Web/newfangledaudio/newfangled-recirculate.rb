cask "newfangled-recirculate" do
  version "1.1.9"
  sha256 "c407c1273d03625c868aa021a28607f0c5cde5b0f5cb80a27b685487e7feebfc"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Recirculate/Recirculate-#{version}-osx-installer.dmg",
      verified: "downloads.eventide.com/"
  name "Newfangled Audio Recirculate"
  desc "Flexible delay"
  homepage "https://www.newfangledaudio.com/recirculate"

  auto_updates false

  installer script: {
    executable: "Recirculate-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Recirculate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Recirculate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Recirculate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Recirculate.aaxplugin",
            ],
            trash:  "/Users/davidsiu/Music/Newfangled Audio/Recirculate/"
end
