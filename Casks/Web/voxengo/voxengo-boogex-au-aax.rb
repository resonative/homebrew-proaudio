cask "voxengo-boogex-au-aax" do
  version "3.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoBoogex_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Boogex AU/AAX"
  desc "Guitar amp/cab simulation"
  homepage "https://www.voxengo.com/product/boogex/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Boogex.component", target: "/Library/Audio/Plug-Ins/Components/Boogex.component"
  artifact "ProTools AAX/Boogex.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Boogex.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Boogex.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Boogex.component",
  ]
end
