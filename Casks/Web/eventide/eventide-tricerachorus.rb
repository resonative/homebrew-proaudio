cask "eventide-tricerachorus" do
  version "1.2.0"
  sha256 "a900e03f48f96850ddf0b56d64e87649bee4ccc7a0fbab00e5b12b5976bdce90"

  url "https://downloads.eventide.com/audio/installers/plug-ins/TriceraChorus/TriceraChorus-#{version}-osx-installer.dmg"
  name "Eventide TriceraChorus"
  desc "BBD tri chorus, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/tricerachorus/"

  auto_updates false

  installer script: {
    executable: "TriceraChorus-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall TriceraChorus.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
