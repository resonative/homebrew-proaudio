cask "voxengo-warmifier-vst" do
  version "2.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoWarmifier_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Warmifier VST"
  desc "Subtle tube saturation"
  homepage "https://www.voxengo.com/product/warmifier/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Warmifier.vst", target: "/Library/Audio/Plug-Ins/VST/Warmifier.vst"
  artifact "Warmifier.vst3", target: "/Library/Audio/Plug-Ins/VST3/Warmifier.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Warmifier.vst",
    "/Library/Audio/Plug-Ins/VST3/Warmifier.vst3",
  ]
end
