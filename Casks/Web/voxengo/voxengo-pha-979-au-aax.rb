cask "voxengo-pha-979-au-aax" do
  version "2.12"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPHA979_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo PHA-979 AU/AAX"
  desc "Phase alignemnt and rotation utility"
  homepage "https://www.voxengo.com/product/pha979/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "PHA-979.component", target: "/Library/Audio/Plug-Ins/Components/PHA-979.component"
  artifact "ProTools AAX/PHA-979.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/PHA-979.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/PHA-979.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/PHA-979.component",
  ]
end
