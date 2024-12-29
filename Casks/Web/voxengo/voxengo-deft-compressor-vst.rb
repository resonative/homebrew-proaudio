cask "voxengo-deft-compressor-vst" do
  version "1.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoDeftCompressor_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Deft Compressor VST"
  desc "Multi-mode compressor"
  homepage "https://www.voxengo.com/product/deftcompressor/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Deft Compressor.vst", target: "/Library/Audio/Plug-Ins/VST/Deft Compressor.vst"
  artifact "Deft Compressor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Deft Compressor.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Deft Compressor.vst",
    "/Library/Audio/Plug-Ins/VST3/Deft Compressor.vst3",
  ]
end
