cask "eventide-omnipressor" do
  version "3.11.0"
  sha256 "1df8d52a637f335136e725fe6668ec53e0ab178afb3473eab1a0648f93c1afe4"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Omnipressor/Omnipressor-#{version}-osx-installer.dmg"
  name "Eventide Omnipressor"
  desc "Aggressive opto compressor"
  homepage "https://www.eventideaudio.com/plug-ins/omnipressor/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "Omnipressor-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Omnipressor.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
