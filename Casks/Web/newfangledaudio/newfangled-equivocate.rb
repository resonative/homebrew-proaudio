cask "newfangled-equivocate" do
  version "1.14.4"
  sha256 "f71efe8070f684e191329fee83abfee3addc66e228a6c7dc5c4d3b1cfdde2ccb"
       
  url "https://downloads.eventideaudio.com/installers/plug-ins/ElevateBundle/Newfangled-Elevate-Bundle-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
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
            trash:  "~/Music/Newfangled Audio/EQuivocate/"
end
