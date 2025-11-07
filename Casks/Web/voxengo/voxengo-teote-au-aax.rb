cask "voxengo-teote-au-aax" do
  version "1.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTEOTE_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo TEOTE AU/AAX"
  desc "Spectral balancer AU/AAX"
  homepage "https://www.voxengo.com/product/teote/"

  auto_updates false

  artifact "TEOTE.component", target: "/Library/Audio/Plug-Ins/Components/TEOTE.component"
  artifact "ProTools AAX/TEOTE.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TEOTE.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/TEOTE.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/TEOTE.component",
  ]
end
