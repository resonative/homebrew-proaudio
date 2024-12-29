cask "voxengo-ebuslim-vst" do
  version "1.10"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoEBusLim_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo EBusLim VST"
  desc "Low latency brickwall limiter"
  homepage "https://www.voxengo.com/product/ebuslim/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "EBusLim.vst", target: "/Library/Audio/Plug-Ins/VST/EBusLim.vst"
  artifact "EBusLim.vst3", target: "/Library/Audio/Plug-Ins/VST3/EBusLim.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/EBusLim.vst",
    "/Library/Audio/Plug-Ins/VST3/EBusLim.vst3",
  ]
end
