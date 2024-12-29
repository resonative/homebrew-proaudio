cask "voxengo-latency-delay-vst" do
  version "2.10"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoLatencyDelay_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Latency Delay VST"
  desc "Latency delay compensator"
  homepage "https://www.voxengo.com/product/latencydelay/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Latency Delay.vst", target: "/Library/Audio/Plug-Ins/VST/Latency Delay.vst"
  artifact "Latency Delay.vst3", target: "/Library/Audio/Plug-Ins/VST3/Latency Delay.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Latency Delay.vst",
    "/Library/Audio/Plug-Ins/VST3/Latency Delay.vst3",
  ]
end
