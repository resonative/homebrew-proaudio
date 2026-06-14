cask "voxengo-tempo-delay" do
  version "2.9"
  sha256 "05c76443909d7f0a5e61236a70413450383682dcd7f32fe09c9c3b95c4abf6d2"

  url "https://www.voxengo.com/files/VoxengoTempoDelay_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Tempo Delay"
  desc "General purpose delay with tremolo"
  homepage "https://www.voxengo.com/product/tempodelay/"

  auto_updates false

  artifact "Tempo Delay.component", target: "/Library/Audio/Plug-Ins/Components/Tempo Delay.component"
  artifact "ProTools AAX/Tempo Delay.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Tempo Delay.aaxplugin"
  artifact "Tempo Delay.vst", target: "/Library/Audio/Plug-Ins/VST/Tempo Delay.vst"
  artifact "Tempo Delay.vst3", target: "/Library/Audio/Plug-Ins/VST3/Tempo Delay.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Tempo Delay.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Tempo Delay.component",
    "/Library/Audio/Plug-Ins/VST/Tempo Delay.vst",
    "/Library/Audio/Plug-Ins/VST3/Tempo Delay.vst3",
  ]
end
