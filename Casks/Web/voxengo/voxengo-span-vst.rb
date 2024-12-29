cask "voxengo-span-vst" do
  version "3.22"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo SPAN VST/VST3"
  desc "Spectrum Analyzer VST/VST3"
  homepage "https://www.voxengo.com/product/span/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "SPAN.vst", target: "/Library/Audio/Plug-Ins/VST/SPAN.vst"
  artifact "SPAN.vst3", target: "/Library/Audio/Plug-Ins/VST3/SPAN.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/SPAN.vst",
    "/Library/Audio/Plug-Ins/VST3/SPAN.vst3",
  ]
end
