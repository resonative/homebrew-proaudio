cask "newfangled-pendulate" do
  version "1.6.9"
  sha256 "5658ee25b58a05c6776c7580f63aa9be4432d1f168fc61f5bf3342c07eaa97cc"

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
            trash:  "/Users/davidsiu/Music/Newfangled Audio/Pendulate/"
end
