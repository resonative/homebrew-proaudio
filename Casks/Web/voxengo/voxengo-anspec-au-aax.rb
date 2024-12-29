cask "voxengo-anspec-au-aax" do
  version "1.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoAnSpec_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo AnSpec AU/AAX"
  desc "Analog-style frequency analyzer"
  homepage "https://www.voxengo.com/product/anspec/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "AnSpec.component", target: "/Library/Audio/Plug-Ins/Components/AnSpec.component"
  artifact "ProTools AAX/AnSpec.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/AnSpec.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/AnSpec.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/AnSpec.component",
  ]
end
