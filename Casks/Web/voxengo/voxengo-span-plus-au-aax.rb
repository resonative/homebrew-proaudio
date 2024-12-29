cask "voxengo-span-plus-au-aax" do
  version "1.24"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSPANPlus_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo SPAN Plus AU/AAX"
  desc "Extended Spectrum Analyzer"
  homepage "https://www.voxengo.com/product/spanplus/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "SPAN Plus.component", target: "/Library/Audio/Plug-Ins/Components/SPAN Plus.component"
  artifact "ProTools AAX/SPAN Plus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN Plus.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN Plus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/SPAN Plus.component",
  ]
end
