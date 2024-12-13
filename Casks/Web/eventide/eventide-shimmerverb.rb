cask "eventide-shimmerverb" do
  version "1.2.0"
  sha256 "0c3ac4c3c05a038aed5b71c4ecc2b6de754f74a90f05618395f26889f4f7c1bc"

  url "https://downloads.eventide.com/audio/installers/plug-ins/ShimmerVerb/ShimmerVerb-#{version}-osx-installer.dmg"
  name "Eventide ShimmerVerb"
  desc "Shimmer reverb"
  homepage "https://www.eventideaudio.com/plug-ins/shimmerverb/"

  auto_updates false
  depends_on macos: ">= :mojave"

  installer script: {
    executable: "ShimmerVerb-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Eventide/Uninstallers/Uninstall ShimmerVerb.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
