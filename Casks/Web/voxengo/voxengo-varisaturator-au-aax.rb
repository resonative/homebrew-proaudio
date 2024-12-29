cask "voxengo-varisaturator-au-aax" do
  version "2.6"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoVariSaturator_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo VariSaturator AU/AAX"
  desc "2-stage saturator"
  homepage "https://www.voxengo.com/product/varisaturator/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "VariSaturator.component", target: "/Library/Audio/Plug-Ins/Components/VariSaturator.component"
  artifact "ProTools AAX/VariSaturator.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/VariSaturator.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/VariSaturator.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/VariSaturator.component",
  ]
end
