cask "voxengo-tempo-delay-vst" do
  version "2.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTempoDelay_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Tempo Delay VST"
  desc "General purpose delay with tremolo"
  homepage "https://www.voxengo.com/product/tempodelay/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Tempo Delay.vst", target: "/Library/Audio/Plug-Ins/VST/Tempo Delay.vst"
  artifact "Tempo Delay.vst3", target: "/Library/Audio/Plug-Ins/VST3/Tempo Delay.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Tempo Delay.vst",
    "/Library/Audio/Plug-Ins/VST3/Tempo Delay.vst3",
  ]
end
