cask "voxengo-bms-vst" do
  version "2.6"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoBMS_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo BMS VST"
  desc "Bass/LFE management"
  homepage "https://www.voxengo.com/product/bms/"

  auto_updates false

  artifact "BMS.vst", target: "/Library/Audio/Plug-Ins/VST/BMS.vst"
  artifact "BMS.vst3", target: "/Library/Audio/Plug-Ins/VST3/BMS.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/BMS.vst",
    "/Library/Audio/Plug-Ins/VST3/BMS.vst3",
  ]
end
