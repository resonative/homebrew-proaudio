cask "voxengo-sound-delay" do
  version "1.15"
  sha256 "289a16328403dbfd9bc9a5e52e20e079f720a372cefd0004e18eed0c1af32df5"

  url "https://www.voxengo.com/files/VoxengoSoundDelay_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Sound Delay"
  desc "Millisecond and sample delay"
  homepage "https://www.voxengo.com/product/sounddelay/"

  auto_updates false

  artifact "Sound Delay.component", target: "/Library/Audio/Plug-Ins/Components/Sound Delay.component"
  artifact "ProTools AAX/Sound Delay.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Sound Delay.aaxplugin"
  artifact "Sound Delay.vst", target: "/Library/Audio/Plug-Ins/VST/Sound Delay.vst"
  artifact "Sound Delay.vst3", target: "/Library/Audio/Plug-Ins/VST3/Sound Delay.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Sound Delay.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Sound Delay.component",
    "/Library/Audio/Plug-Ins/VST/Sound Delay.vst",
    "/Library/Audio/Plug-Ins/VST3/Sound Delay.vst3",
  ]
end
