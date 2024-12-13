cask "newfangled-equivocate" do
  version "1.13.9"
  sha256 "3fee517a6727f6168879a4f7f5624dff98811d2131c24233cf2056018d2be795"

  url "https://downloads.eventide.com/audio/installers/plug-ins/ElevateBundle/Newfangled-Elevate-Bundle-#{version}-osx-installer.dmg",
      verified: "downloads.eventide.com/"
  name "Newfangled Audio EQuivocate"
  desc "Mastering linear EQ"
  homepage "https://www.newfangledaudio.com/equivocate"

  auto_updates false

  installer script: {
    executable: "Newfangled-Elevate-Bundle-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--disable-components", "Elevate,Punctuate,Saturate"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Newfangled EQuivocate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Newfangled EQuivocate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Newfangled EQuivocate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Newfangled Equivocate.aaxplugin",
            ],
            trash:  "/Users/davidsiu/Music/Newfangled Audio/EQuivocate/"
end
