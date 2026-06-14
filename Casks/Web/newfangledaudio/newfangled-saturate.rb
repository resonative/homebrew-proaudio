cask "newfangled-saturate" do
  version "1.14.4"
  sha256 "4921d9c89b8a7538cbc1626419f744fa49980c157426794cb2de20600491c26c"

  url "https://downloads.eventideaudio.com/installers/plug-ins/Saturate/Newfangled-Saturate-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
  name "Newfangled Audio Saturate"
  desc "Spectral clipper"
  homepage "https://www.newfangledaudio.com/saturate"

  auto_updates false

  installer script: {
    executable: "Newfangled-Elevate-Bundle-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--disable-components", "EQuivocate,Elevate,Punctuate"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Newfangled Saturate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Newfangled Saturate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Newfangled Saturate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Newfangled Saturate.aaxplugin",
            ],
            trash:  "~/Music/Newfangled Audio/Saturate/"
end
