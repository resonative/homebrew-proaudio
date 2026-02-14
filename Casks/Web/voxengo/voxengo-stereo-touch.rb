cask "voxengo-stereo-touch" do
  version "2.19"
  sha256 "01092446a568e15eae478ba933a4166303aaf45b17441a6c44ba38a328f5095b"

  url "https://www.voxengo.com/files/VoxengoStereoTouch_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Stereo Touch"
  desc "Stereo widner"
  homepage "https://www.voxengo.com/product/stereotouch/"

  auto_updates false

  artifact "Stereo Touch.component", target: "/Library/Audio/Plug-Ins/Components/Stereo Touch.component"
  artifact "ProTools AAX/Stereo Touch.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Stereo Touch.aaxplugin"
  artifact "Stereo Touch.vst", target: "/Library/Audio/Plug-Ins/VST/Stereo Touch.vst"
  artifact "Stereo Touch.vst3", target: "/Library/Audio/Plug-Ins/VST3/Stereo Touch.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Stereo Touch.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Stereo Touch.component",
    "/Library/Audio/Plug-Ins/VST/Stereo Touch.vst",
    "/Library/Audio/Plug-Ins/VST3/Stereo Touch.vst3",
  ]
end
