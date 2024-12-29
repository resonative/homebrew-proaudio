cask "voxengo-crtiv-tape-bus-au-aax" do
  version "1.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCRTIVTapeBus_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo CRTIV Tape Bus AU/AAX"
  desc "Tape emulation"
  homepage "https://www.voxengo.com/product/crtivtapebus/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "CRTIV Tape Bus.component", target: "/Library/Audio/Plug-Ins/Components/CRTIV Tape Bus.component"
  artifact "ProTools AAX/CRTIV Tape Bus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/CRTIV Tape Bus.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/CRTIV Tape Bus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/CRTIV Tape Bus.component",
  ]
end
