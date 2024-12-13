cask "eventide-mangledverb" do
  version "2.9.0"
  sha256 "863df3257b30414da199658ce80d4751c27a4f69a9b0757490460930408c34e1"

  url "https://downloads.eventide.com/audio/installers/plug-ins/MangledVerb/MangledVerb-#{version}-osx-installer.dmg"
  name "Eventide MangledVerb"
  desc "Reverb with distortion, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/mangledverb/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "MangledVerb-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall MangledVerb.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
