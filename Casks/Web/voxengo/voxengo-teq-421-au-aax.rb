cask "voxengo-teq-421-au-aax" do
  version "1.3"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTEQ421_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo TEQ-421 AU/AAX"
  desc "3-band EQ with saturation"
  homepage "https://www.voxengo.com/product/teq421/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "TEQ-421.component", target: "/Library/Audio/Plug-Ins/Components/TEQ-421.component"
  artifact "ProTools AAX/TEQ-421.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TEQ-421.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/TEQ-421.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/TEQ-421.component",
  ]
end
