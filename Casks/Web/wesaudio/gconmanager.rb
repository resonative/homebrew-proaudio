cask "gconmanager" do
  version "17.0.4851"
  sha256  "3f4fbe76279f07349f52a6dcdc667a72f9b04786865bfcdd5ebe476c49b7a52b"

  url "https://wesaudio.com/uploads/WesAudio_MACx86x64_VST_AAX_v#{version}.dmg"
  name "WesAudio GConManager"
  desc "Configuration and remote control plugins for WesAudio devices"
  homepage "https://wesaudio.com/download/"

  auto_updates true

  pkg "WesAudio_MACx86x64_VST_AAX_v#{version}.pkg"

  uninstall launchctl: "com.wesaudio.agent.gcon.control",
            quit:      [
                         "com.wesaudio.gpe.GConControl",
                         "com.wesaudio.gpe.GConManager",
            ],
            pkgutil:   "com.wesaudio.*",
            delete:    [
              "/Applications/WesAudio/",
              # "/Library/Application Support/Avid/Audio/Plug-Ins/WesAudio",
              # "/Library/Audio/Plug-Ins/VST/WesAudio",
              # "/Library/Audio/Plug-Ins/VST3/WesAudio",
              "/Library/LaunchAgents/com.wesaudio.agent.gcon.service.plist",
              "~/Library/Saved Application State/com.wesaudio.gpe.GConManager.savedState/",
              "~/Library/Preferences/com.wesaudio.gpe.GConControl.plist",
              "~/Library/Preferences/com.wesaudio.gpe.GConManager.plist",
            ]
end
