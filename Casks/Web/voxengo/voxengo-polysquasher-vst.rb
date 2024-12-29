cask "voxengo-polysquasher-vst" do
  version "3.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPolysquasher_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Polysquasher VST"
  desc "Mastering compressor"
  homepage "https://www.voxengo.com/product/polysquasher/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Polysquasher 3.vst", target: "/Library/Audio/Plug-Ins/VST/Polysquasher 3.vst"
  artifact "Polysquasher 3.vst3", target: "/Library/Audio/Plug-Ins/VST3/Polysquasher 3.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Polysquasher 3.vst",
    "/Library/Audio/Plug-Ins/VST3/Polysquasher 3.vst3",
  ]
end
