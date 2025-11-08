cask "newfangled-articulate" do
  version "1.1.1"
  sha256 "446aed3992309a3d371ce2760d82d6b92fc496715aa5f381ebdc418be2d01363"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Articulate/Articulate-#{version}-osx-installer.dmg",
      verified: "downloads.eventide.com/"
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
