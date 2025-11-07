cask "voxengo-bms-au-aax" do
  version "2.6"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoBMS_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo BMS AU/AAX"
  desc "Bass/LFE management"
  homepage "https://www.voxengo.com/product/bms/"

  auto_updates false

  artifact "BMS.component", target: "/Library/Audio/Plug-Ins/Components/BMS.component"
  artifact "ProTools AAX/BMS.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/BMS.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/BMS.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/BMS.component",
  ]
end
