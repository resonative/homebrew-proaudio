cask "eventide-temperance-lite" do
  version "1.0.5"
  sha256 "0d20229dc7cf8c98f1ac94858e86bab5b72355c0078017a8314216838e2f90d1"

  url "https://downloads.eventide.com/audio/installers/plug-ins/TemperanceLite/Temperance-Lite-#{version}-osx-installer.dmg"
  name "Eventide Temperance Lite"
  desc "Modal modeling reverb"
  homepage "https://www.eventideaudio.com/plug-ins/temperance-lite/"

  auto_updates false

  installer script: {
    executable: "Temperance-Lite-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Temperance Lite.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
