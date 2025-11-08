cask "eventide-h3000-band-delays-mk-ii" do
  version "1.2.0"
  sha256 "c6acdd15658df0b08f8b9896d9ca602fd2cb4c97d6beb65841faaea3398b3db4"

  url "https://downloads.eventide.com/audio/installers/plug-ins/H3000BandDelaysMkII/H3000-Band-Delays-Mk-II-#{version}-osx-installer.dmg"
  name "Eventide H3000 Factory Mk II"
  desc "Rhythmic delays from hardware H3000 algorithm"
  homepage "https://www.eventideaudio.com/plug-ins/h3000-band-delays-mk-ii/"

  auto_updates false

  installer script: {
    executable: "H3000-Band-Delays-Mk-II-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall H3000 Band Delays Mk II.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
