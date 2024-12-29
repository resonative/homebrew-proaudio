cask "voxengo-sound-delay-au-aax" do
  version "1.14"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSoundDelay_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Sound Delay AU/AAX"
  desc "Millisecond and sample delay"
  homepage "https://www.voxengo.com/product/sounddelay/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Sound Delay.component", target: "/Library/Audio/Plug-Ins/Components/Sound Delay.component"
  artifact "ProTools AAX/Sound Delay.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Sound Delay.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Sound Delay.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Sound Delay.component",
  ]
end
