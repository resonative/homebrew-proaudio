cask "voxengo-sound-delay-vst" do
  version "1.14"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSoundDelay_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Sound Delay VST"
  desc "Millisecond and sample delay"
  homepage "https://www.voxengo.com/product/sounddelay/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Sound Delay.vst", target: "/Library/Audio/Plug-Ins/VST/Sound Delay.vst"
  artifact "Sound Delay.vst3", target: "/Library/Audio/Plug-Ins/VST3/Sound Delay.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Sound Delay.vst",
    "/Library/Audio/Plug-Ins/VST3/Sound Delay.vst3",
  ]
end
