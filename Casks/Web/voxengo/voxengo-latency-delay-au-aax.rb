cask "voxengo-latency-delay-au-aax" do
  version "2.10"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoLatencyDelay_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Latency Delay AU/AAX"
  desc "Latency delay compensator"
  homepage "https://www.voxengo.com/product/latencydelay/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Latency Delay.component", target: "/Library/Audio/Plug-Ins/Components/Latency Delay.component"
  artifact "ProTools AAX/Latency Delay.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Latency Delay.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Latency Delay.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Latency Delay.component",
  ]
end
