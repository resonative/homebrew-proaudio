cask "eventide-crystals" do
  version "1.2.0"
  sha256 "54ab4e13b5df589e111c36930d518942c80147a7fe443e3707040897d0f86a25"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Crystals/Crystals-#{version}-osx-installer.dmg"
  name "Eventide CrushStation"
  desc "Overdrive and distortion plugin, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/crystals/"

  auto_updates false

  installer script: {
    executable: "Crystals-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Crystals.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
