cask "voxengo-marvel-geq" do
  version "1.17"
  sha256 "10088c75129877881886ac9cf44b6a0bc869273b2762ad5a6e56d2071f12aad2"

  url "https://www.voxengo.com/files/VoxengoMarvelGEQ_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Marvel GEQ"
  desc "Linear phase 16-band GEQ"
  homepage "https://www.voxengo.com/product/marvelgeq/"

  auto_updates false

  artifact "Marvel GEQ.component", target: "/Library/Audio/Plug-Ins/Components/Marvel GEQ.component"
  artifact "ProTools AAX/Marvel GEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Marvel GEQ.aaxplugin"
  artifact "Marvel GEQ.vst", target: "/Library/Audio/Plug-Ins/VST/Marvel GEQ.vst"
  artifact "Marvel GEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/Marvel GEQ.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Marvel GEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Marvel GEQ.component",
    "/Library/Audio/Plug-Ins/VST/Marvel GEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/Marvel GEQ.vst3",
  ]
end
