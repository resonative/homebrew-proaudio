cask "voxengo-warmifier-au-aax" do
  version "2.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoWarmifier_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Warmifier AU/AAX"
  desc "Subtle tube saturation"
  homepage "https://www.voxengo.com/product/warmifier/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Warmifier.component", target: "/Library/Audio/Plug-Ins/Components/Warmifier.component"
  artifact "ProTools AAX/Warmifier.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Warmifier.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Warmifier.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Warmifier.component",
  ]
end
