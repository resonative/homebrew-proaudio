cask "eventide-ultrareverb" do
  version "3.10.0"
  sha256 "197fac1d8aa1bef33ee8bf62827eb97f0a753eab407b75d734945f24f55c7d52"

  url "https://downloads.eventide.com/audio/installers/plug-ins/UltraReverb/UltraReverb-#{version}-osx-installer.dmg"
  name "Eventide UltraReverb"
  desc "Flexible general purpose reverb"
  homepage "https://www.eventideaudio.com/plug-ins/ultrareverb/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "UltraReverb-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall UltraReverb.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
