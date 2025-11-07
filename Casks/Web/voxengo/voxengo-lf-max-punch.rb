cask "voxengo-lf-max-punch" do
  version "1.16"
  sha256 "aba0c7e2ac2b83d0b4e9c987ee1a1c52967d9bfd8e097818540a5241ae6da996"

  url "https://www.voxengo.com/files/VoxengoLFMaxPunch_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo LF Max Punch"
  desc "Low frequency enhancer and sub synthesizer"
  homepage "https://www.voxengo.com/product/lfmaxpunch/"

  auto_updates false

  artifact "LF Max Punch.component", target: "/Library/Audio/Plug-Ins/Components/LF Max Punch.component"
  artifact "ProTools AAX/LF Max Punch.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/LF Max Punch.aaxplugin"
  artifact "LF Max Punch.vst", target: "/Library/Audio/Plug-Ins/VST/LF Max Punch.vst"
  artifact "LF Max Punch.vst3", target: "/Library/Audio/Plug-Ins/VST3/LF Max Punch.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/LF Max Punch.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/LF Max Punch.component",
    "/Library/Audio/Plug-Ins/VST/LF Max Punch.vst",
    "/Library/Audio/Plug-Ins/VST3/LF Max Punch.vst3",
  ]
end
