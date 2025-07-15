cask "gconmanager" do
  version "16.0.4607"
  sha256  "f91297b5fd74aacf088eac158df6f708d57b61bbd99d6c5d79a32824a262fb67"

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
