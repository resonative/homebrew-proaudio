cask "voxengo-water-chorus-au-aax" do
  version "1.1"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoWaterChorus_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Water Chorus AU/AAX"
  desc "Chorus"
  homepage "https://www.voxengo.com/product/waterchorus/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Water Chorus.component", target: "/Library/Audio/Plug-Ins/Components/Water Chorus.component"
  artifact "ProTools AAX/Water Chorus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Water Chorus.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Water Chorus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Water Chorus.component",
  ]
end
