cask "voxengo-elephant-au-aax" do
  version "5.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoElephant_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Elephant AU/AAX"
  desc "Master limiter"
  homepage "https://www.voxengo.com/product/elephant/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Elephant.component", target: "/Library/Audio/Plug-Ins/Components/Elephant.component"
  artifact "ProTools AAX/Elephant.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Elephant.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Elephant.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Elephant.component",
  ]
end
