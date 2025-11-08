cask "eventide-sp2016-reverb" do
  version "1.7.0"
  sha256 "a4aa885fac9870344d9affad25028a8b9797d6bae00a37db43fdbf109a4acda0"

  url "https://downloads.eventide.com/audio/installers/plug-ins/SP2016Reverb/SP2016-Reverb-#{version}-osx-installer.dmg"
  name "Eventide SP2016 Reverb"
  desc "High density room and plate reverb"
  homepage "https://www.eventideaudio.com/plug-ins/sp2016-reverb/"

  auto_updates false

  installer script: {
    executable: "SP2016-Reverb-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall SP2016 Reverb.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
