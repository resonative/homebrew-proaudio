cask "voxengo-soniformer-au-aax" do
  version "3.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSoniformer_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Soniformers AU/AAX"
  desc "Spectral dynamic processor"
  homepage "https://www.voxengo.com/product/soniformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Soniformer.component", target: "/Library/Audio/Plug-Ins/Components/Soniformer.component"
  artifact "ProTools AAX/Soniformer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Soniformer.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Soniformer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Soniformer.component",
  ]
end
