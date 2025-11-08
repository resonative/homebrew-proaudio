cask "newfangled-elevate" do
  version "1.14"
  sha256 "81e855e13e28470b458213e7eb642cd67a20a5c7a4712d75223a45edef11ef8f"

  url "https://downloads.eventide.com/audio/installers/plug-ins/ElevateBundle/Newfangled-Elevate-Bundle-#{version}-osx-installer.dmg",
      verified: "downloads.eventide.com/"
  name "Newfangled Audio Elevate"
  desc "Mastering limiter"
  homepage "https://www.newfangledaudio.com/elevate"

  auto_updates false

  installer script: {
    executable: "Newfangled-Elevate-Bundle-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--disable-components", "EQuivocate,Punctuate,Saturate"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Newfangled Elevate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Newfangled Elevate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Newfangled Elevate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Newfangled Elevate.aaxplugin",
            ],
            trash:  "~/Music/Newfangled Audio/Elevate/"
end
