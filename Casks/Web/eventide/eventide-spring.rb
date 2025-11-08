cask "eventide-spring" do
  version "1.4.0"
  sha256 "a04f88585e0299d71c83cf8d8db9f2ef2b6f131d7e2e437f8b4fc021661ac6dc"

  url "https://downloads.eventide.com/audio/installers/plug-ins/Spring/Spring-#{version}-osx-installer.dmg"
  name "Eventide Spring"
  desc "Amp reverb with tremolo, part of H9 series"
  homepage "https://www.eventideaudio.com/plug-ins/spring/"

  auto_updates false

  installer script: {
    executable: "Spring-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Spring.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
