cask "voxengo-marquis-compressor" do
  version "2.9"
  sha256 "1f31428cca68a3baa4e8dfa95ccef23f0fe04af35d32edcaa4045ea0bf1b727e"

  url "https://www.voxengo.com/files/VoxengoMarquisCompressor_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Marquis Compressor"
  desc "General purpose compressor"
  homepage "https://www.voxengo.com/product/marquiscomp/"

  auto_updates false

  artifact "Marquis Compressor.component", target: "/Library/Audio/Plug-Ins/Components/Marquis Compressor.component"
  artifact "ProTools AAX/Marquis Compressor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Marquis Compressor.aaxplugin"
  artifact "Marquis Compressor.vst", target: "/Library/Audio/Plug-Ins/VST/Marquis Compressor.vst"
  artifact "Marquis Compressor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Marquis Compressor.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Marquis Compressor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Marquis Compressor.component",
    "/Library/Audio/Plug-Ins/VST/Marquis Compressor.vst",
    "/Library/Audio/Plug-Ins/VST3/Marquis Compressor.vst3",
  ]
end
