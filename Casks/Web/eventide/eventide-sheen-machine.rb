cask "eventide-sheen-machine" do
  version "1.2.0"
  sha256 "f7d300a349456876c50a37361594bbf211b04f4b813985a50a2756d9408c12fe"

  url "https://downloads.eventide.com/audio/installers/plug-ins/SheenMachine/Sheen-Machine-#{version}-osx-installer.dmg"
  name "Eventide Sheen Machine"
  desc "High frequency EQ with transient/tonal separation"
  homepage "https://www.eventideaudio.com/plug-ins/sheen-machine/"

  auto_updates false

  installer script: {
    executable: "Sheen-Machine-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Sheen Machine.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
