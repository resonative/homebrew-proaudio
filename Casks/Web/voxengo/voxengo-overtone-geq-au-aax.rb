cask "voxengo-overtone-geq-au-aax" do
  version "1.18"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOvertoneGEQ_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Overtone GEQ AU/AAX"
  desc "7-band GEQ"
  homepage "https://www.voxengo.com/product/overtonegeq/"

  auto_updates false

  artifact "Overtone GEQ.component", target: "/Library/Audio/Plug-Ins/Components/Overtone GEQ.component"
  artifact "ProTools AAX/Overtone GEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Overtone GEQ.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Overtone GEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Overtone GEQ.component",
  ]
end
