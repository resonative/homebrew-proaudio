cask "eventide-crushstation" do
  version "1.3.0"
  sha256 "f64c6ef371af7bf0fd271913b00a30494936fb051af6dd8ce79c074ee8ab7e64"

  url "https://downloads.eventide.com/audio/installers/plug-ins/CrushStation/CrushStation-#{version}-osx-installer.dmg"
  name "Eventide CrushStation"
  desc "Overdrive and distortion plugin, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/crushstation/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "CrushStation-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall CrushStation.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
