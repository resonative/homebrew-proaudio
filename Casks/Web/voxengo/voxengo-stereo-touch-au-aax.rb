cask "voxengo-stereo-touch-au-aax" do
  version "2.18"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoStereoTouch_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Stereo Touch AU/AAX"
  desc "Stereo widner"
  homepage "https://www.voxengo.com/product/stereotouch/"

  auto_updates false

  artifact "Stereo Touch.component", target: "/Library/Audio/Plug-Ins/Components/Stereo Touch.component"
  artifact "ProTools AAX/Stereo Touch.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Stereo Touch.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Stereo Touch.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Stereo Touch.component",
  ]
end
