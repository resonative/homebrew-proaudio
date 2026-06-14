cask "voxengo-harmonieq" do
  version "2.12"
  sha256 "3d7452e184a8fd64b048f941308898f753a749fb100961c2ae6a95329f1d0c5b"

  url "https://www.voxengo.com/files/VoxengoHarmoniEQ_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo HarmoniEQ"
  desc "EQ with saturation"
  homepage "https://www.voxengo.com/product/harmonieq/"

  auto_updates false

  artifact "HarmoniEQ.component", target: "/Library/Audio/Plug-Ins/Components/HarmoniEQ.component"
  artifact "ProTools AAX/HarmoniEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/HarmoniEQ.aaxplugin"
  artifact "HarmoniEQ.vst", target: "/Library/Audio/Plug-Ins/VST/HarmoniEQ.vst"
  artifact "HarmoniEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/HarmoniEQ.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/HarmoniEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/HarmoniEQ.component",
    "/Library/Audio/Plug-Ins/VST/HarmoniEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/HarmoniEQ.vst3",
  ]
end
