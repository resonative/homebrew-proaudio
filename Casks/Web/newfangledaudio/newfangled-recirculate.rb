cask "newfangled-recirculate" do
  version "1.2.4"
  sha256 "0adec37d53a4ed01037f680b347ae8b7271bc8e2f8149bbf08d926bed4d62c41"

  url "https://downloads.eventideaudio.com/installers/plug-ins/Recirculate/Recirculate-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
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
