cask "voxengo-span-plus-vst" do
  version "1.24"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSPANPlus_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo SPAN Plus VST/VST3"
  desc "Extended Spectrum Analyzer"
  homepage "https://www.voxengo.com/product/spanplus/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "SPAN Plus.vst", target: "/Library/Audio/Plug-Ins/VST/SPAN Plus.vst"
  artifact "SPAN Plus.vst3", target: "/Library/Audio/Plug-Ins/VST3/SPAN Plus.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/SPAN Plus.vst",
    "/Library/Audio/Plug-Ins/VST3/SPAN Plus.vst3",
  ]
end
