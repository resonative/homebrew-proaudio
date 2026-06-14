cask "newfangled-articulate" do
  version "1.1.4"
  sha256 "ee4c9001dc289ba940c8780dc1ed07c4c244fa656d0256fa40f39752fada6639"

  url "https://downloads.eventideaudio.com/installers/plug-ins/Articulate/Articulate-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
  name "Newfangled Audio Articulate"
  desc "Next-Gen Envelope Shaper"
  homepage "https://www.newfangledaudio.com/articulate"

  auto_updates false

  installer script: {
    executable: "Articulate-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Articulate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Articulate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Articulate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Articulate.aaxplugin",
            ],
            trash:  "~/Music/Newfangled Audio/Articulate/"
end
