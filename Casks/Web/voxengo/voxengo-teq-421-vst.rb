cask "voxengo-teq-421-vst" do
  version "1.3"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTEQ421_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo TEQ-421 VST"
  desc "3-band EQ with saturation"
  homepage "https://www.voxengo.com/product/teq421/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "TEQ-421.vst", target: "/Library/Audio/Plug-Ins/VST/TEQ-421.vst"
  artifact "TEQ-421.vst3", target: "/Library/Audio/Plug-Ins/VST3/TEQ-421.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/TEQ-421.vst",
    "/Library/Audio/Plug-Ins/VST3/TEQ-421.vst3",
  ]
end
