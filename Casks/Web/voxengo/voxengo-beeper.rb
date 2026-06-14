cask "voxengo-beeper" do
  version "2.14"
  sha256 "4bfc1be020e1915d86db2d5ac14bcb811cfad7834d6fd21de584c27cf7a1e4af"

  url "https://www.voxengo.com/files/VoxengoBeeper_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Beeper"
  desc "Beep, noise burst and silence insert"
  homepage "https://www.voxengo.com/product/beeper/"

  auto_updates false

  artifact "Beeper.component", target: "/Library/Audio/Plug-Ins/Components/Beeper.component"
  artifact "ProTools AAX/Beeper.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Beeper.aaxplugin"
  artifact "Beeper.vst", target: "/Library/Audio/Plug-Ins/VST/Beeper.vst"
  artifact "Beeper.vst3", target: "/Library/Audio/Plug-Ins/VST3/Beeper.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Beeper.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Beeper.component",
    "/Library/Audio/Plug-Ins/VST/Beeper.vst",
    "/Library/Audio/Plug-Ins/VST3/Beeper.vst3",
  ]
end
