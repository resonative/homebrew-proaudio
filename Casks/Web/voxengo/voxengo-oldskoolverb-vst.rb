cask "voxengo-oldskoolverb-vst" do
  version "2.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerb_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo OldSkoolVerb VST"
  desc "General use classic algorithm reverb"
  homepage "https://www.voxengo.com/product/oldskoolverb/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "OldSkoolVerb.vst", target: "/Library/Audio/Plug-Ins/VST/OldSkoolVerb.vst"
  artifact "OldSkoolVerb.vst3", target: "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/OldSkoolVerb.vst",
    "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb.vst3",
  ]
end
