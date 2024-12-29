cask "voxengo-voxformer-au-aax" do
  version "2.22"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoVoxformer_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Voxformer AU/AAX"
  desc "Vocal centric channelstrip"
  homepage "https://www.voxengo.com/product/voxformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Voxformer.component", target: "/Library/Audio/Plug-Ins/Components/Voxformer.component"
  artifact "ProTools AAX/Voxformer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Voxformer.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Voxformer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Voxformer.component",
  ]
end
