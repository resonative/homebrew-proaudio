cask "eventide-instant-flanger-mk-ii" do
  version "1.7.0"
  sha256 "718c39066778549f1781519e120dd7cdc5a0a68229622555c8f6e4a2bcc0c215"

  url "https://downloads.eventide.com/audio/installers/plug-ins/InstantFlangerMkII/Instant-Flanger-Mk-II-#{version}-osx-installer.dmg"
  name "Eventide Instant Flanger Mk II"
  desc "Flanger"
  homepage "https://www.eventideaudio.com/plug-ins/instant-flanger-mk-ii/"

  auto_updates false

  installer script: {
    executable: "Instant-Flanger-Mk-II-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Instant Flanger Mk II.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
