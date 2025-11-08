cask "eventide-blackhole" do
  version "3.10.0"
  sha256 "af5b8fab1fa485f68e1097ea1abea938e70fc1ee549b8ab7444246659c4b685a"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Blackhole/Blackhole-#{version}-osx-installer.dmg"
  name "Eventide Blackhole"
  desc "Special effects reverb, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/blackhole/"

  auto_updates false

  installer script: {
    executable: "Blackhole-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Blackhole.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
