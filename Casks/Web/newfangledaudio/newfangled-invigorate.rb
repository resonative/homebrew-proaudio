cask "newfangled-invigorate" do
  version "1.4.4"
  sha256 "223d58c649db292ca09d6615e611655ef7e5d459e99274f09ff13ed253df3429"

  url "https://downloads.eventideaudio.com/installers/plug-ins/Invigorate/Invigorate-#{version}-osx-installer.dmg",
      verified: "downloads.eventideaudio.com/"
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
