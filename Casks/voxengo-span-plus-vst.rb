cask "voxengo-span-plus-vst" do
  version "1.24"
  sha256 "7dec187054fa8948443486029cf0698621a6fa3e37c748945d748fdf1c3ef808"

  url "https://www.voxengo.com/files/VoxengoSPANPlus_#{version.delete(".")}_Mac_VST_VST3_setup.dmg"
  name "Voxengo SPAN Plus VST/VST3"
  desc "Extended Spectrum Analyzer VST/VST3"
  homepage "https://www.voxengo.com/product/spanplus/"

  livecheck do
    cask "voxengo-span-plus-vst"
  end

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "SPAN Plus.vst", target: "/Library/Audio/Plug-Ins/VST/SPAN Plus.vst"
  artifact "SPAN Plus.vst3", target: "/Library/Audio/Plug-Ins/VST3/SPAN Plus.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/SPAN Plus.vst",
    "/Library/Audio/Plug-Ins/VST3/SPAN Plus.vst3"
  ]

end