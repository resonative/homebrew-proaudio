cask "voxengo-marquis-compressor-au-aax" do
  version "2.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoMarquisCompressor_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Marquis Compressor AU/AAX"
  desc "General purpose compressor"
  homepage "https://www.voxengo.com/product/marquiscomp/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Marquis Compressor.component", target: "/Library/Audio/Plug-Ins/Components/Marquis Compressor.component"
  artifact "ProTools AAX/Marquis Compressor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Marquis Compressor.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Marquis Compressor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Marquis Compressor.component",
  ]
end
