cask "voxengo-deft-compressor-au-aax" do
  version "1.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoDeftCompressor_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Deft Compressor AU/AAX"
  desc "Multi-mode compressor"
  homepage "https://www.voxengo.com/product/deftcompressor/"

  auto_updates false

  artifact "Deft Compressor.component", target: "/Library/Audio/Plug-Ins/Components/Deft Compressor.component"
  artifact "ProTools AAX/Deft Compressor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Deft Compressor.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Deft Compressor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Deft Compressor.component",
  ]
end
