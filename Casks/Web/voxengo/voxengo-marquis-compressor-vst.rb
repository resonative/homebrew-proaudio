cask "voxengo-marquis-compressor-vst" do
  version "2.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoMarquisCompressor_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Marquis Compressor VST"
  desc "General purpose compressor"
  homepage "https://www.voxengo.com/product/marquiscomp/"

  auto_updates false

  artifact "Marquis Compressor.vst", target: "/Library/Audio/Plug-Ins/VST/Marquis Compressor.vst"
  artifact "Marquis Compressor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Marquis Compressor.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Marquis Compressor.vst",
    "/Library/Audio/Plug-Ins/VST3/Marquis Compressor.vst3",
  ]
end
