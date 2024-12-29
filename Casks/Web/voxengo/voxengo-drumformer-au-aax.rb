cask "voxengo-drumformer-au-aax" do
  version "1.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoDrumformer_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Drumformer AU/AAX"
  desc "Drum centric channelstrip"
  homepage "https://www.voxengo.com/product/drumformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Drumformer.component", target: "/Library/Audio/Plug-Ins/Components/Drumformer.component"
  artifact "ProTools AAX/Drumformer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Drumformer.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Drumformer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Drumformer.component",
  ]
end
