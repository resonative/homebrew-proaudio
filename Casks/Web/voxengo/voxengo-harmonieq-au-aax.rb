cask "voxengo-harmonieq-au-aax" do
  version "2.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoHarmoniEQ_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo HarmoniEQ AU/AAX"
  desc "EQ with saturation"
  homepage "https://www.voxengo.com/product/harmonieq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "HarmoniEQ.component", target: "/Library/Audio/Plug-Ins/Components/HarmoniEQ.component"
  artifact "ProTools AAX/HarmoniEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/HarmoniEQ.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/HarmoniEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/HarmoniEQ.component",
  ]
end
