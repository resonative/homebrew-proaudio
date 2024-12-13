cask "eventide-h949-harmonizer" do
  version "3.11.0"
  sha256 "f8516eecd518cd98e78cb11f85889593e9eae747bfca4f05475252eb1c3112e0"

  url "https://downloads.eventide.com/audio/installers/plug-ins/H949/H949-Harmonizer-#{version}-osx-installer.dmg"
  name "Eventide H949 Harmonizer"
  desc "Real-time midi-controllable harmonizer, successor of H910"
  homepage "https://www.eventideaudio.com/plug-ins/h949-harmonizer/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "H949-Harmonizer-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall H949 Harmonizer (Single and Dual).app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
