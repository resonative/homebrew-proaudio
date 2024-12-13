cask "eventide-deboom" do
  version "1.2.0"
  sha256 "416fca1ea16313a5df5b4eb1b897b416a7340a0b4293f6c17228ea38bed1f1d6"

  url "https://downloads.eventide.com/audio/installers/plug-ins/DeBoom/DeBoom-#{version}-osx-installer.dmg"
  name "Eventide DeBoom"
  desc "Low frequency correction EQ with transient/tonal separation"
  homepage "https://www.eventideaudio.com/plug-ins/deboom/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "DeBoom-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall DeBoom.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
