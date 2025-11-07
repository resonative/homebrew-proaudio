cask "voxengo-span" do
  version "3.23"
  sha256 "7b6a8215f4bfb8ec50675b36a5f945d2dd2d4dc36888c13076b67a5a52063dd1"

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo SPAN"
  desc "Spectrum Analyzer"
  homepage "https://www.voxengo.com/product/span/"

  auto_updates false

  artifact "SPAN.component", target: "/Library/Audio/Plug-Ins/Components/SPAN.component"
  artifact "ProTools AAX/SPAN.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin"
  artifact "SPAN.vst", target: "/Library/Audio/Plug-Ins/VST/SPAN.vst"
  artifact "SPAN.vst3", target: "/Library/Audio/Plug-Ins/VST3/SPAN.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/SPAN.component",
    "/Library/Audio/Plug-Ins/VST/SPAN.vst",
    "/Library/Audio/Plug-Ins/VST3/SPAN.vst3",
  ]
end
