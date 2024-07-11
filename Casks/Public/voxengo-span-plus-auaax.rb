cask "voxengo-span-plus-auaax" do
  version "1.24"
  sha256 "c74fa7ea8ee988b68f764019e32b318dfbbfadae3cd02fae4c73532655922528"

  url "https://www.voxengo.com/files/VoxengoSPANPlus_#{version.delete(".")}_Mac_AU_AAX_setup.dmg"
  name "Voxengo SPAN Plus AU/AAX"
  desc "Extended Spectrum Analyzer AU/AAX"
  homepage "https://www.voxengo.com/product/spanplus/"

  livecheck do
    cask "voxengo-span-plus-auaax"
  end

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "SPAN Plus.component", target: "/Library/Audio/Plug-Ins/Components/SPAN Plus.component"
  artifact "ProTools AAX/SPAN Plus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN Plus.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN Plus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/SPAN Plus.component",
  ]
end
