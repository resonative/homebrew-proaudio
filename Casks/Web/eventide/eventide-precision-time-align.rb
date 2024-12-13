cask "eventide-precision-time-align" do
  version "3.10.0"
  sha256 "fce56dae4e35b87008cb812aa50a19a002e311970ebb97af5e6cd0852766ec63"

  url "https://downloads.eventide.com/audio/installers/plug-ins/PrecisionTimeAlign/Precision-Time-Align-#{version}-osx-installer.dmg"
  name "Eventide Percision Time Align"
  desc "Sub sample delay"
  homepage "https://www.eventideaudio.com/plug-ins/precision-time-align/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "Precision-Time-Align-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Precision Time Align.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
