cask "voxengo-marvel-geq-au-aax" do
  version "1.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoMarvelGEQ_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Marvel GEQ AU/AAX"
  desc "Linear phase 16-band GEQ"
  homepage "https://www.voxengo.com/product/marvelgeq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Marvel GEQ.component", target: "/Library/Audio/Plug-Ins/Components/Marvel GEQ.component"
  artifact "ProTools AAX/Marvel GEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Marvel GEQ.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Marvel GEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Marvel GEQ.component",
  ]
end
