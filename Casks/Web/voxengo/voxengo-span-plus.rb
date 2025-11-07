cask "voxengo-span-plus" do
  version "1.25"
  sha256 "847471b912f5c258a8759fce2581b90925c0e79883423eec9b81f2387484357a"

  url "https://www.voxengo.com/files/VoxengoSPANPlus_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo SPAN Plus"
  desc "Extended Spectrum Analyzer"
  homepage "https://www.voxengo.com/product/spanplus/"

  auto_updates false

  artifact "SPAN Plus.component", target: "/Library/Audio/Plug-Ins/Components/SPAN Plus.component"
  artifact "ProTools AAX/SPAN Plus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN Plus.aaxplugin"
  artifact "SPAN Plus.vst", target: "/Library/Audio/Plug-Ins/VST/SPAN Plus.vst"
  artifact "SPAN Plus.vst3", target: "/Library/Audio/Plug-Ins/VST3/SPAN Plus.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN Plus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/SPAN Plus.component",
    "/Library/Audio/Plug-Ins/VST/SPAN Plus.vst",
    "/Library/Audio/Plug-Ins/VST3/SPAN Plus.vst3",
  ]
end
