cask "newfangled-recirculate" do
  version "1.2.0"
  sha256 "9c91e4abe2e74c0d2f3401352676ad645dcd52cff424ffa682c61adf3364bcc1"

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
            trash:  "~/Music/Newfangled Audio/Recirculate/"
end
