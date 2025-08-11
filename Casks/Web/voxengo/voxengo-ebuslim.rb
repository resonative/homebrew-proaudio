cask "voxengo-ebuslim" do
  version "1.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoEBusLim_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo EBusLim"
  desc "Low latency brickwall limiter"
  homepage "https://www.voxengo.com/product/ebuslim/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "ProTools AAX/EBusLim.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/EBusLim.aaxplugin"
  artifact "EBusLim.component", target: "/Library/Audio/Plug-Ins/Components/EBusLim.component"
  artifact "EBusLim.vst", target: "/Library/Audio/Plug-Ins/VST/EBusLim.vst"
  artifact "EBusLim.vst3", target: "/Library/Audio/Plug-Ins/VST3/EBusLim.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/EBusLim.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/EBusLim.component",
    "/Library/Audio/Plug-Ins/VST/EBusLim.vst",
    "/Library/Audio/Plug-Ins/VST3/EBusLim.vst3",
  ]
end
