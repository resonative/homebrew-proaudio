cask "eventide-quadravox" do
  version "3.10.0"
  sha256 "b11a2e3b07687e6825bc45e47dd3e461e0d810f22c1512f862a87d3db5dc7211"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Quadravox/Quadravox-#{version}-osx-installer.dmg"
  name "Eventide Quadravox"
  desc "4-voice diatonic pitch shifter"
  homepage "https://www.eventideaudio.com/plug-ins/quadravox/"

  auto_updates false

  installer script: {
    executable: "Quadravox-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Quadravox.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
