cask "eventide-rotary-mod" do
  version "1.2.0"
  sha256 "e923ef1db4868b0495da51c85ffeb3d54c1d55a87b68e22c57691fec69f2925e"

  url "https://downloads.eventide.com/audio/installers/plug-ins/RotaryMod/Rotary-Mod-#{version}-osx-installer.dmg"
  name "Eventide Rotary Mod"
  desc "Leslie speaker modulation"
  homepage "https://www.eventideaudio.com/plug-ins/rotary-mod/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "Rotary-Mod-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Rotary Mod.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
