cask "newfangled-elevate" do
  version "1.13.9"
  sha256 "3fee517a6727f6168879a4f7f5624dff98811d2131c24233cf2056018d2be795"

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
            trash:  "/Users/davidsiu/Music/Newfangled Audio/Elevate/"
end
