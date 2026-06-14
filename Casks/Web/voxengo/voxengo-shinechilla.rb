cask "voxengo-shinechilla-au-aax" do
  version "1.6"
  sha256 "66f00f304cf9d0b09881b0c1d0a4296712fac77f821f4bb03f8fc969d97e307a"

  url "https://www.voxengo.com/files/VoxengoShinechilla_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Shinechilla"
  desc "Spectral saturator"
  homepage "https://www.voxengo.com/product/shinechilla/"

  auto_updates false

  artifact "Shinechilla.component", target: "/Library/Audio/Plug-Ins/Components/Shinechilla.component"
  artifact "ProTools AAX/Shinechilla.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Shinechilla.aaxplugin"
  artifact "Shinechilla.vst", target: "/Library/Audio/Plug-Ins/VST/Shinechilla.vst"
  artifact "Shinechilla.vst3", target: "/Library/Audio/Plug-Ins/VST3/Shinechilla.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Shinechilla.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Shinechilla.component",
    "/Library/Audio/Plug-Ins/VST/Shinechilla.vst",
    "/Library/Audio/Plug-Ins/VST3/Shinechilla.vst3",
  ]
end
