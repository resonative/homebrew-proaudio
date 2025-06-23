cask "voxengo-lf-max-punch" do
  version "1.16"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoLFMaxPunch_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo LF Max Punch"
  desc "Low frequency enhancer and sub synthesizer"
  homepage "https://www.voxengo.com/product/lfmaxpunch/"

  auto_updates false
  depends_on macos: ">= :sierra"

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
