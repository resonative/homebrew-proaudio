cask "eventide-h3000-factory-mk-ii" do
  version "1.2.0"
  sha256 "89c617318e340d561a0201e68d46d9fec131587bcad17f1eeab5212db051515c"

  url "https://downloads.eventide.com/audio/installers/plug-ins/H3000FactoryMkII/H3000-Factory-Mk-II-#{version}-osx-installer.dmg"
  name "Eventide H3000 Factory Mk II"
  desc "Multi-fx with hardware H3000 algorithm"
  homepage "https://www.eventideaudio.com/plug-ins/h3000-factory-mk-ii/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "H3000-Factory-Mk-II-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall H3000 Factory Mk II.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
