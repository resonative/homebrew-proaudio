cask "newfangled-invigorate" do
  version "1.4.0"
  sha256 "e71f33b3f0a28da823a2bb0a1f3ed5427894c0b9b596a0516e4168652d527bda"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Invigorate/Invigorate-#{version}-osx-installer.dmg",
      verified: "downloads.eventide.com/"
  name "Newfangled Audio Invigorate"
  desc "Bus compressor and enhancer"
  homepage "https://www.newfangledaudio.com/invigorate"

  auto_updates false

  installer script: {
    executable: "Invigorate-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Invigorate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Invigorate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Invigorate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Invigorate.aaxplugin",
            ],
            trash:  "~/Music/Newfangled Audio/Invigorate/"
end
