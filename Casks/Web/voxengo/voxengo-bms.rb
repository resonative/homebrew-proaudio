cask "voxengo-bms" do
  version "2.7"
  sha256 "39b2b726fa9672c4d72f3fd87206b2b8110712b3f621f7be5a02fd9bbb0ab338"

  url "https://www.voxengo.com/files/VoxengoBMS_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo BMS"
  desc "Bass/LFE management"
  homepage "https://www.voxengo.com/product/bms/"

  auto_updates false

  artifact "BMS.component", target: "/Library/Audio/Plug-Ins/Components/BMS.component"
  artifact "ProTools AAX/BMS.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/BMS.aaxplugin"
  artifact "BMS.vst", target: "/Library/Audio/Plug-Ins/VST/BMS.vst"
  artifact "BMS.vst3", target: "/Library/Audio/Plug-Ins/VST3/BMS.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/BMS.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/BMS.component",
    "/Library/Audio/Plug-Ins/VST/BMS.vst",
    "/Library/Audio/Plug-Ins/VST3/BMS.vst3",
  ]
end
