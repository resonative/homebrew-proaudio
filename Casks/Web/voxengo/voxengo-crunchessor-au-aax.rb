cask "voxengo-crunchessor-au-aax" do
  version "2.19"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCrunchessor_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Crunchessor AU/AAX"
  desc "Character compressor"
  homepage "https://www.voxengo.com/product/crunchessor/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Crunchessor.component", target: "/Library/Audio/Plug-Ins/Components/Crunchessor.component"
  artifact "ProTools AAX/Crunchessor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Crunchessor.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Crunchessor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Crunchessor.component",
  ]
end
