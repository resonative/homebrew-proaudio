cask "newfangled-pendulate" do
  version "1.7.4"
  sha256 "fadea29b2faf51793e5ea0c8740c80b8ddb3b53b1faf2e52bf6d0b19d8c3f52c"

  url "https://downloads.eventideaudio.com/installers/plug-ins/Pendulate/Pendulate-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
  name "Newfangled Audio Pendulate"
  desc "Textual mono synth"
  homepage "https://www.newfangledaudio.com/pendulate"

  auto_updates false

  installer script: {
    executable: "Pendulate-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Pendulate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Pendulate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Pendulate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Pendulate.aaxplugin",
            ],
            trash:  "~/Music/Newfangled Audio/Pendulate/"
end
