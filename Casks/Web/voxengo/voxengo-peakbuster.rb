cask "voxengo-peakbuster" do
  version "1.8"
  sha256 "c30a7355a4d58ee4b1a280b390452f52a78091f29fa454ecee2db1bd5a6a8cac"

  url "https://www.voxengo.com/files/VoxengoPeakbuster_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Peakbuster"
  desc "Multiband transient enhancer"
  homepage "https://www.voxengo.com/product/peakbuster/"

  auto_updates false

  artifact "Peakbuster.component", target: "/Library/Audio/Plug-Ins/Components/Peakbuster.component"
  artifact "ProTools AAX/Peakbuster.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Peakbuster.aaxplugin"
  artifact "Peakbuster.vst", target: "/Library/Audio/Plug-Ins/VST/Peakbuster.vst"
  artifact "Peakbuster.vst3", target: "/Library/Audio/Plug-Ins/VST3/Peakbuster.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Peakbuster.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Peakbuster.component",
    "/Library/Audio/Plug-Ins/VST/Peakbuster.vst",
    "/Library/Audio/Plug-Ins/VST3/Peakbuster.vst3",
  ]
end
