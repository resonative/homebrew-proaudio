cask "voxengo-beeper-au-aax" do
  version "2.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoBeeper_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Beeper AU/AAX"
  desc "Beep, noise burst and silence insert"
  homepage "https://www.voxengo.com/product/beeper/"

  auto_updates false

  artifact "Beeper.component", target: "/Library/Audio/Plug-Ins/Components/Beeper.component"
  artifact "ProTools AAX/Beeper.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Beeper.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Beeper.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Beeper.component",
  ]
end
