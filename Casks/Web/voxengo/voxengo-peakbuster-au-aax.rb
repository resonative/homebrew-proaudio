cask "voxengo-peakbuster-au-aax" do
  version "1.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPeakbuster_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Peakbuster AU/AAX"
  desc "Multiband transient enhancer"
  homepage "https://www.voxengo.com/product/peakbuster/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Peakbuster.component", target: "/Library/Audio/Plug-Ins/Components/Peakbuster.component"
  artifact "ProTools AAX/Peakbuster.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Peakbuster.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Peakbuster.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Peakbuster.component",
  ]
end
