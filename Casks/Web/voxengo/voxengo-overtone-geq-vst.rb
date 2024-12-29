cask "voxengo-overtone-geq-vst" do
  version "1.18"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOvertoneGEQ_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Overtone GEQ VST"
  desc "7-band GEQ"
  homepage "https://www.voxengo.com/product/overtonegeq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Overtone GEQ.vst", target: "/Library/Audio/Plug-Ins/VST/Overtone GEQ.vst"
  artifact "Overtone GEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/Overtone GEQ.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Overtone GEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/Overtone GEQ.vst3",
  ]
end
