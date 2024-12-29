cask "voxengo-span-au-aax" do
  version "3.22"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo SPAN AU/AAX"
  desc "Spectrum Analyzer AU/AAX"
  homepage "https://www.voxengo.com/product/span/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "SPAN.component", target: "/Library/Audio/Plug-Ins/Components/SPAN.component"
  artifact "ProTools AAX/SPAN.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/SPAN.component",
  ]
end
