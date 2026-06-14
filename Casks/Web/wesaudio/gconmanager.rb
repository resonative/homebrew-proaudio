cask "gconmanager" do
  version "18.0.5322"
  sha256  "2f5aaa2450db856d4b010e61b399afad8233a3f3af73035b3f1887483c78acab"

  url "https://wesaudio.com/uploads/WesAudio_MACx86x64_VST_AAX_v#{version}.dmg"
  name "WesAudio GConManager"
  desc "Configuration and remote control plugins for WesAudio devices"
  homepage "https://wesaudio.com/download/"

  auto_updates false

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
