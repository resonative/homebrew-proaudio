cask "newfangled-invigorate" do
  version "1.3.10"
  sha256 "7daa70d57d9b0815a9b0ff15cbcdfb6fcf5c949a76e828cd1dbf1d575179a690"

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
            trash:  "/Users/davidsiu/Music/Newfangled Audio/Invigorate/"
end
