cask "eventide-echannel" do
  version "3.10.0"
  sha256 "e77a9d39e19cd672887bc15cf01ff160b38fbfde01b296b03c240aa360d1d4bd"

  url "https://downloads.eventide.com/audio/installers/plug-ins/EChannel/EChannel-#{version}-osx-installer.dmg"
  name "Eventide EChannel"
  desc "Channelstrip"
  homepage "https://www.eventideaudio.com/plug-ins/echannel/"

  auto_updates false

  installer script: {
    executable: "EChannel-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall EChannel.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
