cask "voxengo-spatifier-au-aax" do
  version "1.10"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSpatifier_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Spatifier AU/AAX"
  desc "Mono compatible mono-to-stereo widener"
  homepage "https://www.voxengo.com/product/spatifier/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Spatifier.component", target: "/Library/Audio/Plug-Ins/Components/Spatifier.component"
  artifact "ProTools AAX/Spatifier.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Spatifier.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Spatifier.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Spatifier.component",
  ]
end
