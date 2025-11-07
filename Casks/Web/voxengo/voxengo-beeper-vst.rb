cask "voxengo-beeper-vst" do
  version "2.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoBeeper_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Beeper VST"
  desc "Beep, noise burst and silence insert"
  homepage "https://www.voxengo.com/product/beeper/"

  auto_updates false

  artifact "Beeper.vst", target: "/Library/Audio/Plug-Ins/VST/Beeper.vst"
  artifact "Beeper.vst3", target: "/Library/Audio/Plug-Ins/VST3/Beeper.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Beeper.vst",
    "/Library/Audio/Plug-Ins/VST3/Beeper.vst3",
  ]
end
