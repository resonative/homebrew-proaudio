cask "voxengo-correlometer-au-aax" do
  version "1.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCorrelometer_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Correlometer AU/AAX"
  desc "Correlation meter"
  homepage "https://www.voxengo.com/product/correlometer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Correlometer.component", target: "/Library/Audio/Plug-Ins/Components/Correlometer.component"
  artifact "ProTools AAX/Correlometer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Correlometer.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Correlometer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Correlometer.component",
  ]
end
