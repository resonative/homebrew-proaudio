cask "eventide-physion-mk-ii" do
  version "1.2.0"
  sha256 "991ee518a00da4e53fb9b54dfad66923ce5f33e929815551899c93d5be432ad8"

  url "https://downloads.eventide.com/audio/installers/plug-ins/PhysionMkII/Physion-Mk-II-#{version}-osx-installer.dmg"
  name "Eventide Physion Mk II"
  desc "Multi-fx with transient/tonal split"
  homepage "https://www.eventideaudio.com/plug-ins/physion-mk-ii/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "Physion-Mk-II-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Physion Mk II.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
