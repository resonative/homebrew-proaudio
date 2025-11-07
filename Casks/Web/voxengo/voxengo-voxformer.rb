cask "voxengo-voxformer" do
  version "2.23"
  sha256 "079a522fa530398cb1a82800fbc4d16fcbf85e47cd70c8234e8d6faebb3f9582"

  url "https://www.voxengo.com/files/VoxengoVoxformer_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Voxformer"
  desc "Vocal centric channelstrip"
  homepage "https://www.voxengo.com/product/voxformer/"

  auto_updates false

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
