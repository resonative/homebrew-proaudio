cask "eventide-tverb" do
  version "2.10.0"
  sha256 "1e66c36a76f4dac6012da37ec64d4043b39685e20defa221e64131c2dbf80add"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Tverb/Tverb-#{version}-osx-installer.dmg"
  name "Eventide Tverb"
  desc "Visconti/Bowie Inspired Triple Reverb"
  homepage "https://www.eventideaudio.com/plug-ins/tverb/"

  auto_updates false

  installer script: {
    executable: "Tverb-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Tverb.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
