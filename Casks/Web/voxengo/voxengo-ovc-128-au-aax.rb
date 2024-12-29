cask "voxengo-ovc-128-au-aax" do
  version "1.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOVC128_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo OVC-128 AU/AAX"
  desc "Clipper with oversampling"
  homepage "https://www.voxengo.com/product/ovc128/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "OVC-128.component", target: "/Library/Audio/Plug-Ins/Components/OVC-128.component"
  artifact "ProTools AAX/OVC-128.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/OVC-128.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/OVC-128.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/OVC-128.component",
  ]
end
