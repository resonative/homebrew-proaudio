cask "voxengo-correlometer" do
  version "1.9"
  sha256 "c8df39ff82dca9dfa79fb88d046c80b02f9ef26713071f667ab6f6cfea4c8b76"

  url "https://www.voxengo.com/files/VoxengoCorrelometer_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Correlometer"
  desc "Correlation meter"
  homepage "https://www.voxengo.com/product/correlometer/"

  auto_updates false

  artifact "Correlometer.component", target: "/Library/Audio/Plug-Ins/Components/Correlometer.component"
  artifact "ProTools AAX/Correlometer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Correlometer.aaxplugin"
  artifact "Correlometer.vst", target: "/Library/Audio/Plug-Ins/VST/Correlometer.vst"
  artifact "Correlometer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Correlometer.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Correlometer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Correlometer.component",
    "/Library/Audio/Plug-Ins/VST/Correlometer.vst",
    "/Library/Audio/Plug-Ins/VST3/Correlometer.vst3",
  ]
end
