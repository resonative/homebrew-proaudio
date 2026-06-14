cask "newfangled-obliterate" do
  version "1.1.4"
  sha256 "b836ffb4a562c47ad6b6c85ab1fb6836012c7ff4acaece6f7937059b51d130d8"

  url "https://downloads.eventideaudio.com/installers/plug-ins/Obliterate/Obliterate-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
  name "Newfangled Audio Obliterate"
  desc "OTT distortion filter"
  homepage "https://www.newfangledaudio.com/obliterate"

  auto_updates false

  installer script: {
    executable: "Obliterate-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall delete: [
              "/Library/Audio/Plug-Ins/Components/Obliterate.component",
              "/Library/Audio/Plug-Ins/VST/Newfangled Audio/Obliterate.vst",
              "/Library/Audio/Plug-Ins/VST3/Newfangled Audio/Obliterate.vst3",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Newfangled Audio/Obliterate.aaxplugin",
            ],
            trash:  "~/Music/Newfangled Audio/Obliterate/"
end
