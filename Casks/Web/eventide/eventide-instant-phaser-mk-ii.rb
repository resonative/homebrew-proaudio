cask "eventide-instant-phaser-mk-ii" do
  version "1.7.0"
  sha256 "24b78b23d0dc3ef607d900c1ab2ea5d1e654a2650ae8bcfbeb1c0d67a6bd7b0a"

  url "https://downloads.eventide.com/audio/installers/plug-ins/InstantPhaserMkII/Instant-Phaser-Mk-II-#{version}-osx-installer.dmg"
  name "Eventide Instant Phaser Mk II"
  desc "Phaser"
  homepage "https://www.eventideaudio.com/plug-ins/instant-phaser-mk-ii/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "Instant-Phaser-Mk-II-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall Instant Phaser Mk II.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
