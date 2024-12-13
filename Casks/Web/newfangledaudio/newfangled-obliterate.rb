cask "newfangled-obliterate" do
  version "1.0.3"
  sha256 "a97ea427f34e8e0293884498e0952c524c1e6ff8b26592ed7440288226e1d92e"

  url "https://downloads.newfangledaudio.com/obliterate/#{version}/Obliterate-#{version}-osx-installer.dmg"
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
            trash:  "/Users/davidsiu/Music/Newfangled Audio/Obliterate/"
end
