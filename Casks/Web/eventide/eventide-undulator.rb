cask "eventide-undulator" do
  version "1.2.0"
  sha256 "59e6f06bd9cf40d0ff76604580f404dbe47d4d825cf77a934a035b7c183b6793"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Undulator/Undulator-#{version}-osx-installer.dmg"
  name "Eventide Undulator"
  desc "Tremolo, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/undulator/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "Undulator-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Undulator.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
