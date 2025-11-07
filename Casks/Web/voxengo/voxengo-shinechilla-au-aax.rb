cask "voxengo-shinechilla-au-aax" do
  version "1.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoShinechilla_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Shinechilla AU/AAX"
  desc "Spectral saturator"
  homepage "https://www.voxengo.com/product/shinechilla/"

  auto_updates false

  artifact "Shinechilla.component", target: "/Library/Audio/Plug-Ins/Components/Shinechilla.component"
  artifact "ProTools AAX/Shinechilla.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Shinechilla.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Shinechilla.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Shinechilla.component",
  ]
end
