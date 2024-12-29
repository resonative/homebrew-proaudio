cask "voxengo-pha-979-vst" do
  version "2.12"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPHA979_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo PHA-979 VST"
  desc "Phase alignemnt and rotation utility"
  homepage "https://www.voxengo.com/product/pha979/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "PHA-979.vst", target: "/Library/Audio/Plug-Ins/VST/PHA-979.vst"
  artifact "PHA-979.vst3", target: "/Library/Audio/Plug-Ins/VST3/PHA-979.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/PHA-979.vst",
    "/Library/Audio/Plug-Ins/VST3/PHA-979.vst3",
  ]
end
