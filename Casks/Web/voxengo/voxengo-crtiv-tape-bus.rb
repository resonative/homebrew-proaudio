cask "voxengo-crtiv-tape-bus" do
  version "1.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCRTIVTapeBus_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo CRTIV Tape Bus AU/AAX"
  desc "Tape emulation"
  homepage "https://www.voxengo.com/product/crtivtapebus/"

  auto_updates false

  artifact "CRTIV Tape Bus.component", target: "/Library/Audio/Plug-Ins/Components/CRTIV Tape Bus.component"
  artifact "ProTools AAX/CRTIV Tape Bus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/CRTIV Tape Bus.aaxplugin"
  artifact "CRTIV Tape Bus.vst", target: "/Library/Audio/Plug-Ins/VST/CRTIV Tape Bus.vst"
  artifact "CRTIV Tape Bus.vst3", target: "/Library/Audio/Plug-Ins/VST3/CRTIV Tape Bus.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/CRTIV Tape Bus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/CRTIV Tape Bus.component",
    "/Library/Audio/Plug-Ins/VST/CRTIV Tape Bus.vst",
    "/Library/Audio/Plug-Ins/VST3/CRTIV Tape Bus.vst3",
  ]
end
