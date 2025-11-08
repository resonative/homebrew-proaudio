cask "eventide-ultrachannel" do
  version "3.10.0"
  sha256 "d5ef428ec043ce030d181b989ee4b084f8de5384abb323558929edece790b649"

  url "https://downloads.eventide.com/audio/installers/plug-ins/UltraChannel/UltraChannel-#{version}-osx-installer.dmg"
  name "Eventide UltraChannel"
  desc "Channelstrip with micropitch"
  homepage "https://www.eventideaudio.com/plug-ins/ultrachannel/"

  auto_updates false

  installer script: {
    executable: "UltraChannel-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall UltraChannel.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
