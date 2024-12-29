cask "voxengo-msed-au-aax" do
  version "3.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoMSED_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo MSED AU/AAX"
  desc "Midside encoder/decoder and utility"
  homepage "https://www.voxengo.com/product/msed/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "MSED.component", target: "/Library/Audio/Plug-Ins/Components/MSED.component"
  artifact "ProTools AAX/MSED.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/MSED.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/MSED.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/MSED.component",
  ]
end
