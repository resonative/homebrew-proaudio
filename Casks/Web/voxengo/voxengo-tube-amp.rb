cask "voxengo-tube-amp" do
  version "2.14"
  sha256 "c3db4c7242b9395a595368e49b4c057c85957e93d40c62f4950d1ebae4828b1b"

  url "https://www.voxengo.com/files/VoxengoTubeAmp_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Tube Amp"
  desc "Tube overdrive"
  homepage "https://www.voxengo.com/product/tubeamp/"

  auto_updates false

  artifact "Tube Amp.component", target: "/Library/Audio/Plug-Ins/Components/Tube Amp.component"
  artifact "ProTools AAX/Tube Amp.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Tube Amp.aaxplugin"
  artifact "Tube Amp.vst", target: "/Library/Audio/Plug-Ins/VST/Tube Amp.vst"
  artifact "Tube Amp.vst3", target: "/Library/Audio/Plug-Ins/VST3/Tube Amp.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Tube Amp.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Tube Amp.component",
    "/Library/Audio/Plug-Ins/VST/Tube Amp.vst",
    "/Library/Audio/Plug-Ins/VST3/Tube Amp.vst3",
  ]
end
