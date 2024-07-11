cask "wesaudio-gcon-manager" do
  version "12.1.3746"
  sha256 "15ab2a8b455fcde0ea9adae16d0e90a3d9795cff16835ad1e314f37d2d177aad"

  url "https://wesaudio.com/uploads/WesAudio_MACx86x64_VST_AAX_v#{version}.dmg"
  name "WesAudio GConManager"
  desc "Configuration app and plugins for WesAudio devices"
  homepage "https://wesaudio.com/"

  livecheck do
    cask "wesaudio-gcon-manager"
  end

  auto_updates false

  pkg "WesAudo_MACx86x75_VST_AAX_v#{version}.pkg"

  uninstall quit: [
    "com.wesaudio.gpe.GConControl",
    "com.wesaudio.gpe.GConManager",
  ]
  # need to make a copy of uninstaller from dmg or somehow access it?
end
