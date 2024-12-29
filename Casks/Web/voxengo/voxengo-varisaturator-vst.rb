cask "voxengo-varisaturator-vst" do
  version "2.6"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoVariSaturator_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo VariSaturator VST"
  desc "2-stage saturator"
  homepage "https://www.voxengo.com/product/varisaturator/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "VariSaturator.vst", target: "/Library/Audio/Plug-Ins/VST/VariSaturator.vst"
  artifact "VariSaturator.vst3", target: "/Library/Audio/Plug-Ins/VST3/VariSaturator.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/VariSaturator.vst",
    "/Library/Audio/Plug-Ins/VST3/VariSaturator.vst3",
  ]
end
