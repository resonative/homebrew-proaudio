cask "voxengo-correlometer-vst" do
  version "1.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCorrelometer_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Correlometer VST"
  desc "Correlation meter"
  homepage "https://www.voxengo.com/product/correlometer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Correlometer.vst", target: "/Library/Audio/Plug-Ins/VST/Correlometer.vst"
  artifact "Correlometer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Correlometer.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Correlometer.vst",
    "/Library/Audio/Plug-Ins/VST3/Correlometer.vst3",
  ]
end
