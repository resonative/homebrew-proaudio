cask "voxengo-drumformer" do
  version "1.12"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoDrumformer_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Drumformer"
  desc "Drum centric channelstrip"
  homepage "https://www.voxengo.com/product/drumformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Drumformer.component", target: "/Library/Audio/Plug-Ins/Components/Drumformer.component"
  artifact "ProTools AAX/Drumformer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Drumformer.aaxplugin"
  artifact "Drumformer.vst", target: "/Library/Audio/Plug-Ins/VST/Drumformer.vst"
  artifact "Drumformer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Drumformer.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Drumformer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Drumformer.component",
    "/Library/Audio/Plug-Ins/VST/Drumformer.vst",
    "/Library/Audio/Plug-Ins/VST3/Drumformer.vst3",
  ]
end
