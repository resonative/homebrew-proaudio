cask "newfangled-pendulate" do
  version "1.7.0"
  sha256 "db1b4e966c87f3667874f37a2d54ed825597d9c747cce9950eb8d86409a8a22b"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Pendulate/Pendulate-#{version}-osx-installer.dmg",
      verified: "downloads.eventide.com/"
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
