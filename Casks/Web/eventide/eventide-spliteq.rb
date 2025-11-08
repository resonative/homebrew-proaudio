cask "eventide-spliteq" do
  version "1.2.0"
  sha256 "d8ce27841f911dd1e660940588a7368da535ffb74ad0ff6cd271a7f7360f0c40"

  url "https://downloads.eventide.com/audio/installers/plug-ins/SplitEQ/SplitEQ-#{version}-osx-installer.dmg"
  name "Eventide SplitEQ"
  desc "Transient/tonal EQ"
  homepage "https://www.eventideaudio.com/plug-ins/spliteq/"

  auto_updates false

  installer script: {
    executable: "SplitEQ-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall SplitEQ.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
