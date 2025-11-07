cask "voxengo-peakbuster-vst" do
  version "1.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPeakbuster_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Peakbuster VST"
  desc "Multiband transient enhancer"
  homepage "https://www.voxengo.com/product/peakbuster/"

  auto_updates false

  artifact "Peakbuster.vst", target: "/Library/Audio/Plug-Ins/VST/Peakbuster.vst"
  artifact "Peakbuster.vst3", target: "/Library/Audio/Plug-Ins/VST3/Peakbuster.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Peakbuster.vst",
    "/Library/Audio/Plug-Ins/VST3/Peakbuster.vst3",
  ]
end
