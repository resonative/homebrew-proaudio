cask "voxengo-teote-au-aax" do
  version "1.16"
  sha256 "49d0c34bf4e3a6f424ee9be390004d870331e0abf15324f311eb6d539296a162"

  url "https://www.voxengo.com/files/VoxengoTEOTE_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo TEOTE"
  desc "Spectral balancer"
  homepage "https://www.voxengo.com/product/teote/"

  auto_updates false

  artifact "TEOTE.component", target: "/Library/Audio/Plug-Ins/Components/TEOTE.component"
  artifact "ProTools AAX/TEOTE.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TEOTE.aaxplugin"
  artifact "TEOTE.vst", target: "/Library/Audio/Plug-Ins/VST/TEOTE.vst"
  artifact "TEOTE.vst3", target: "/Library/Audio/Plug-Ins/VST3/TEOTE.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/TEOTE.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/TEOTE.component",
    "/Library/Audio/Plug-Ins/VST/TEOTE.vst",
    "/Library/Audio/Plug-Ins/VST3/TEOTE.vst3",
  ]
end
