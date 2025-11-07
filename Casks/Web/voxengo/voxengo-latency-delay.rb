cask "voxengo-latency-delay" do
  version "2.11"
  sha256 "71fd08773d27c0ff5497c2ce07451abac3ba286c20b674135b9f45cb8149a778"

  url "https://www.voxengo.com/files/VoxengoLatencyDelay_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Latency Delay"
  desc "Latency delay compensator"
  homepage "https://www.voxengo.com/product/latencydelay/"

  auto_updates false

  artifact "Latency Delay.component", target: "/Library/Audio/Plug-Ins/Components/Latency Delay.component"
  artifact "ProTools AAX/Latency Delay.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Latency Delay.aaxplugin"
  artifact "Latency Delay.vst", target: "/Library/Audio/Plug-Ins/VST/Latency Delay.vst"
  artifact "Latency Delay.vst3", target: "/Library/Audio/Plug-Ins/VST3/Latency Delay.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Latency Delay.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Latency Delay.component",
    "/Library/Audio/Plug-Ins/VST/Latency Delay.vst",
    "/Library/Audio/Plug-Ins/VST3/Latency Delay.vst3",
  ]
end
