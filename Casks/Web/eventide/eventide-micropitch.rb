cask "eventide-micropitch" do
  version "1.2.0"
  sha256 "9a9ec6aa60ac0379708f8a54bb0cf82dcfad20be555272b8bdc51c2fa60aac39"

  url "https://downloads.eventide.com/audio/installers/plug-ins/MicroPitch/MicroPitch-#{version}-osx-installer.dmg"
  name "Eventide MicroPitch"
  desc "Pitch shifter and delay, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/micropitch/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "MicroPitch-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall MicroPitch.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
