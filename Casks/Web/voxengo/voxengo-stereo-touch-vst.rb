cask "voxengo-stereo-touch-vst" do
  version "2.18"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoStereoTouch_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Stereo Touch VST"
  desc "Stereo widner"
  homepage "https://www.voxengo.com/product/stereotouch/"

  auto_updates false

  artifact "Stereo Touch.vst", target: "/Library/Audio/Plug-Ins/VST/Stereo Touch.vst"
  artifact "Stereo Touch.vst3", target: "/Library/Audio/Plug-Ins/VST3/Stereo Touch.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Stereo Touch.vst",
    "/Library/Audio/Plug-Ins/VST3/Stereo Touch.vst3",
  ]
end
