cask "voxengo-harmonieq-vst" do
  version "2.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoHarmoniEQ_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo HarmoniEQ VST"
  desc "EQ with saturation"
  homepage "https://www.voxengo.com/product/harmonieq/"

  auto_updates false

  artifact "HarmoniEQ.vst", target: "/Library/Audio/Plug-Ins/VST/HarmoniEQ.vst"
  artifact "HarmoniEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/HarmoniEQ.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/HarmoniEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/HarmoniEQ.vst3",
  ]
end
