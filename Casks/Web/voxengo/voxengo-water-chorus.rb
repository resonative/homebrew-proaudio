cask "voxengo-water-chorus" do
  version "1.2"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoWaterChorus_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Water Chorus AU/AAX"
  desc "Chorus"
  homepage "https://www.voxengo.com/product/waterchorus/"

  auto_updates false

  artifact "ProTools AAX/Water Chorus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Water Chorus.aaxplugin"
  artifact "Water Chorus.component", target: "/Library/Audio/Plug-Ins/Components/Water Chorus.component"
  artifact "Water Chorus.vst", target: "/Library/Audio/Plug-Ins/VST/Water Chorus.vst"
  artifact "Water Chorus.vst3", target: "/Library/Audio/Plug-Ins/VST3/Water Chorus.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Water Chorus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Water Chorus.component",
    "/Library/Audio/Plug-Ins/VST/Water Chorus.vst",
    "/Library/Audio/Plug-Ins/VST3/Water Chorus.vst3",
  ]
end
