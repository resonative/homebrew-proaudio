cask "voxengo-oldskoolverb-plus-vst" do
  version "1.6"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerbPlus_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo OldSkoolVerb Plus VST"
  desc "Extended general use classic algorithm reverb"
  homepage "https://www.voxengo.com/product/oldskoolverbplus/"

  auto_updates false

  artifact "OldSkoolVerb Plus.vst", target: "/Library/Audio/Plug-Ins/VST/OldSkoolVerb Plus.vst"
  artifact "OldSkoolVerb Plus.vst3", target: "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb Plus.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/OldSkoolVerb Plus.vst",
    "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb Plus.vst3",
  ]
end
