cask "voxengo-shumovick-vst" do
  version "2.2"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoShumovick_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Shumovick VST"
  desc "Dynamic noise trigger"
  homepage "https://www.voxengo.com/product/shumovick/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Shumovick.vst", target: "/Library/Audio/Plug-Ins/VST/Shumovick.vst"
  artifact "Shumovick.vst3", target: "/Library/Audio/Plug-Ins/VST3/Shumovick.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Shumovick.vst",
    "/Library/Audio/Plug-Ins/VST3/Shumovick.vst3",
  ]
end
