cask "voxengo-overtone-geq" do
  version "1.19"
  sha256 "30f49f1756a01c6998cb1f2ede83515d26f1206a39c7df8792e237bbc902f6d8"

  url "https://www.voxengo.com/files/VoxengoOvertoneGEQ_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Overtone GEQ"
  desc "7-band GEQ"
  homepage "https://www.voxengo.com/product/overtonegeq/"

  auto_updates false

  artifact "Overtone GEQ.component", target: "/Library/Audio/Plug-Ins/Components/Overtone GEQ.component"
  artifact "ProTools AAX/Overtone GEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Overtone GEQ.aaxplugin"
  artifact "Overtone GEQ.vst", target: "/Library/Audio/Plug-Ins/VST/Overtone GEQ.vst"
  artifact "Overtone GEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/Overtone GEQ.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Overtone GEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Overtone GEQ.component",
    "/Library/Audio/Plug-Ins/VST/Overtone GEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/Overtone GEQ.vst3",
  ]
end
