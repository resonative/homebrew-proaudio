cask "voxengo-voxformer-vst" do
  version "2.22"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoVoxformer_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Voxformer VST"
  desc "Vocal centric channelstrip"
  homepage "https://www.voxengo.com/product/voxformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Voxformer.vst", target: "/Library/Audio/Plug-Ins/VST/Voxformer.vst"
  artifact "Voxformer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Voxformer.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Voxformer.vst",
    "/Library/Audio/Plug-Ins/VST3/Voxformer.vst3",
  ]
end
