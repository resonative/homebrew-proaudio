cask "voxengo-shumovick-au-aax" do
  version "2.2"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoShumovick_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Shumovick AU/AAX"
  desc "Dynamic noise trigger"
  homepage "https://www.voxengo.com/product/shumovick/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Shumovick.component", target: "/Library/Audio/Plug-Ins/Components/Shumovick.component"
  artifact "ProTools AAX/Shumovick.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Shumovick.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Shumovick.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Shumovick.component",
  ]
end
