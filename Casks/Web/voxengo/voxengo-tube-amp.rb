cask "voxengo-tube-amp" do
  version "2.16"
  sha256 "e538d8885b6d7adde82a8adf70cf1baa32d4ca1a911f2136208acda7896b5c79"

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
