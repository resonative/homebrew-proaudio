cask "voxengo-anspec" do
  version "1.9"
  sha256 "694c08ef23bdafa4b293f058d0e75fec5a487026fd1d9ebb102f4fe0e8fd60e2"

  url "https://www.voxengo.com/files/VoxengoAnSpec_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo AnSpec"
  desc "Analog-style frequency analyzer"
  homepage "https://www.voxengo.com/product/anspec/"

  auto_updates false

  artifact "AnSpec.component", target: "/Library/Audio/Plug-Ins/Components/AnSpec.component"
  artifact "ProTools AAX/AnSpec.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/AnSpec.aaxplugin"
  artifact "AnSpec.vst", target: "/Library/Audio/Plug-Ins/VST/AnSpec.vst"
  artifact "AnSpec.vst3", target: "/Library/Audio/Plug-Ins/VST3/AnSpec.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/AnSpec.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/AnSpec.component",
    "/Library/Audio/Plug-Ins/VST/AnSpec.vst",
    "/Library/Audio/Plug-Ins/VST3/AnSpec.vst3",
  ]
end
