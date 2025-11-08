cask "eventide-eq45" do
  version "3.10.0"
  sha256 "082f815c15ab677f3f1250fda12d54ba7cd5dbfe5f3f5285f62a171701520d8c"

  url "https://downloads.eventide.com/audio/installers/plug-ins/EQ45/EQ45-#{version}-osx-installer.dmg"
  name "Eventide EQ45"
  desc "Urei 545 Parametric EQ"
  homepage "https://www.eventideaudio.com/plug-ins/eq45/"

  auto_updates false

  installer script: {
    executable: "EQ45-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall EQ45.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
