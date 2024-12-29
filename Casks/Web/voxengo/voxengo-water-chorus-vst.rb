cask "voxengo-water-chorus-vst" do
  version "1.1"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoWaterChorus_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Water Chorus VST"
  desc "Chorus"
  homepage "https://www.voxengo.com/product/waterchorus/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Water Chorus.vst", target: "/Library/Audio/Plug-Ins/VST/Water Chorus.vst"
  artifact "Water Chorus.vst3", target: "/Library/Audio/Plug-Ins/VST3/Water Chorus.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Water Chorus.vst",
    "/Library/Audio/Plug-Ins/VST3/Water Chorus.vst3",
  ]
end
