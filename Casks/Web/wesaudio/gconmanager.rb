cask "gconmanager" do
  version "15.0.4508"
  sha256  "94837f3a3ec915bd7cc29de4efa5911e2657bfeeb974d43831228b9bbfb84f99"

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
              "/Library/LaunchAgents/com.wesaudio.agent.gcon.service.plist",
              "~/Library/Saved Application State/com.wesaudio.gpe.GConManager.savedState/",
              "~/Library/Preferences/com.wesaudio.gpe.GConControl.plist",
              "~/Library/Preferences/com.wesaudio.gpe.GConManager.plist",
            ]
end
