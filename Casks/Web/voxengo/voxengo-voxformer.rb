cask "voxengo-voxformer" do
  version "2.23"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoVoxformer_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Voxformer"
  desc "Vocal centric channelstrip"
  homepage "https://www.voxengo.com/product/voxformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Voxformer.component", target: "/Library/Audio/Plug-Ins/Components/Voxformer.component"
  artifact "ProTools AAX/Voxformer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Voxformer.aaxplugin"
  artifact "Voxformer.vst", target: "/Library/Audio/Plug-Ins/VST/Voxformer.vst"
  artifact "Voxformer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Voxformer.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Voxformer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Voxformer.component",
    "/Library/Audio/Plug-Ins/VST/Voxformer.vst",
    "/Library/Audio/Plug-Ins/VST3/Voxformer.vst3",
  ]
end
