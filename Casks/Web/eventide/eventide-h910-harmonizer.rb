cask "eventide-h910-harmonizer" do
  version "3.11.0"
  sha256 "001227ab4d8cf1a283885a1e552fe6ee76925533b37f54f981ed7bf58f1d23ba"

  url "https://downloads.eventide.com/audio/installers/plug-ins/H910/H910-Harmonizer-#{version}-osx-installer.dmg"
  name "Eventide H910 Harmonizer"
  desc "Real-time midi-controllable harmonizer"
  homepage "https://www.eventideaudio.com/plug-ins/h910-harmonizer/"

  auto_updates false

  installer script: {
    executable: "H910-Harmonizer-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall H910 Harmonizer (Single and Dual).app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
