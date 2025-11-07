cask "voxengo-shumovick" do
  version "2.3"
  sha256 "d45d62c512d0b4f25a49ba4b8d19ce89cf322d7ce7771c19c896ce24d9e826c2"

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
