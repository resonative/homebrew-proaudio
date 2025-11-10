cask "voxengo-deft-compressor-au-aax" do
  version "1.14"
  sha256 "4f0c88235ae64f2d7cbe4c9b3a966d2560279981d56b30097f180ac06f8e6497"

  url "https://www.voxengo.com/files/VoxengoDeftCompressor_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Deft Compressor"
  desc "Multi-mode compressor"
  homepage "https://www.voxengo.com/product/deftcompressor/"

  auto_updates false

  artifact "Deft Compressor.component", target: "/Library/Audio/Plug-Ins/Components/Deft Compressor.component"
  artifact "ProTools AAX/Deft Compressor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Deft Compressor.aaxplugin"
  artifact "Deft Compressor.vst", target: "/Library/Audio/Plug-Ins/VST/Deft Compressor.vst"
  artifact "Deft Compressor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Deft Compressor.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Deft Compressor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Deft Compressor.component",
    "/Library/Audio/Plug-Ins/VST/Deft Compressor.vst",
    "/Library/Audio/Plug-Ins/VST3/Deft Compressor.vst3",
  ]
end
