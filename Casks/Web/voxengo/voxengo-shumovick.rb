cask "voxengo-shumovick" do
  version "2.4"
  sha256 "340852155b98223e9839cfee7cbb9bb5837c018b519724bd7578776c1ac53d05"

  url "https://www.voxengo.com/files/VoxengoShumovick_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Shumovick"
  desc "Dynamic noise trigger"
  homepage "https://www.voxengo.com/product/shumovick/"

  auto_updates false

  artifact "Shumovick.component", target: "/Library/Audio/Plug-Ins/Components/Shumovick.component"
  artifact "ProTools AAX/Shumovick.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Shumovick.aaxplugin"
  artifact "Shumovick.vst", target: "/Library/Audio/Plug-Ins/VST/Shumovick.vst"
  artifact "Shumovick.vst3", target: "/Library/Audio/Plug-Ins/VST3/Shumovick.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Shumovick.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Shumovick.component",
    "/Library/Audio/Plug-Ins/VST/Shumovick.vst",
    "/Library/Audio/Plug-Ins/VST3/Shumovick.vst3",
  ]
end
