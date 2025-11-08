cask "eventide-octavox" do
  version "3.10.0"
  sha256 "70afaf8edef300a9c503565d3b0828438a46c48fea14b38a5291f33e40a547a3"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Octavox/Octavox-#{version}-osx-installer.dmg"
  name "Eventide Octavox"
  desc "8-voice diatonic pitch shifter"
  homepage "https://www.eventideaudio.com/plug-ins/octavox/"

  auto_updates false

  installer script: {
    executable: "Octavox-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Octavox.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
