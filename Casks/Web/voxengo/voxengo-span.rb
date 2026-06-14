cask "voxengo-span" do
  version "3.24"
  sha256 "82685deeac6060b72621516c7e524730345f06942ace2e32324cacd55f41c476"

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
