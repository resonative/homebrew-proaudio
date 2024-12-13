cask "eventide-eq65" do
  version "3.10.0"
  sha256 "4cf907a03a743220b4303d74dbca58d2b0a77207d0b65edb6059686120bc967a"

  url "https://downloads.eventide.com/audio/installers/plug-ins/EQ65/EQ65-#{version}-osx-installer.dmg"
  name "Eventide EQ65"
  desc "Urei 565 Filter set"
  homepage "https://www.eventideaudio.com/plug-ins/eq45/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "EQ65-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall EQ65.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
