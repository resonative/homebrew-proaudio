cask "voxengo-drumformer-vst" do
  version "1.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoDrumformer_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Drumformer VST"
  desc "Drum centric channelstrip"
  homepage "https://www.voxengo.com/product/drumformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Drumformer.vst", target: "/Library/Audio/Plug-Ins/VST/Drumformer.vst"
  artifact "Drumformer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Drumformer.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Drumformer.vst",
    "/Library/Audio/Plug-Ins/VST3/Drumformer.vst3",
  ]
end
