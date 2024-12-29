cask "voxengo-ebuslim-au-aax" do
  version "1.10"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoEBusLim_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo EBusLim AU/AAX"
  desc "Low latency brickwall limiter"
  homepage "https://www.voxengo.com/product/ebuslim/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "EBusLim.component", target: "/Library/Audio/Plug-Ins/Components/EBusLim.component"
  artifact "ProTools AAX/EBusLim.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/EBusLim.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/EBusLim.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/EBusLim.component",
  ]
end
