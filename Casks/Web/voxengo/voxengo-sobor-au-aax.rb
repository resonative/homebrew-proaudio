cask "voxengo-sobor-au-aax" do
  version "3.3"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSobor_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Sobor AU/AAX"
  desc "General purpose stereo reverb"
  homepage "https://www.voxengo.com/product/sobor/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Sobor.component", target: "/Library/Audio/Plug-Ins/Components/Sobor.component"
  artifact "ProTools AAX/Sobor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Sobor.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Sobor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Sobor.component",
  ]
end
