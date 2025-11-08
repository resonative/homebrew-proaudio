cask "eventide-ultratap" do
  version "2.9.0"
  sha256 "ebd2dbcc27ece653bd1d81fb0b5abad4af80af6441c6f05230d659d1fe5710b5"

  url "https://downloads.eventide.com/audio/installers/plug-ins/UltraTap/UltraTap-#{version}-osx-installer.dmg"
  name "Eventide UltraTap"
  desc "Tap delay with modulation, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/ultratap/"

  auto_updates false

  installer script: {
    executable: "UltraTap-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall UltraTap.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
