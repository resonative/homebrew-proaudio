cask "newfangled-elevate" do
  version "1.14.4"
  sha256 "f71efe8070f684e191329fee83abfee3addc66e228a6c7dc5c4d3b1cfdde2ccb"
       
  url "https://downloads.eventideaudio.com/installers/plug-ins/ElevateBundle/Newfangled-Elevate-Bundle-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
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
