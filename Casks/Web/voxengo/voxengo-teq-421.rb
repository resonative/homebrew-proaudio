cask "voxengo-teq-421" do
  version "1.3"
  sha256 "fc9fb3b8fce1e1d0f7b6eb456c164186afcbe85877b99b43edb22f2fa67d2337"

  url "https://www.voxengo.com/files/VoxengoTEQ421_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo TEQ-421"
  desc "3-band EQ with saturation"
  homepage "https://www.voxengo.com/product/teq421/"

  auto_updates false

  artifact "TEQ-421.component", target: "/Library/Audio/Plug-Ins/Components/TEQ-421.component"
  artifact "ProTools AAX/TEQ-421.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TEQ-421.aaxplugin"
  artifact "TEQ-421.vst", target: "/Library/Audio/Plug-Ins/VST/TEQ-421.vst"
  artifact "TEQ-421.vst3", target: "/Library/Audio/Plug-Ins/VST3/TEQ-421.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/TEQ-421.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/TEQ-421.component",
    "/Library/Audio/Plug-Ins/VST/TEQ-421.vst",
    "/Library/Audio/Plug-Ins/VST3/TEQ-421.vst3",
  ]
end
