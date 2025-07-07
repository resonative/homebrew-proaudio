cask "voxengo-varisaturator" do
  version "2.7"
  sha256 "22360224a7c627bc794cf9a26bab6314e14cfc2880f7d636072e54da10db4719"

  url "https://www.voxengo.com/files/VoxengoVariSaturator_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo VariSaturator"
  desc "2-stage saturator"
  homepage "https://www.voxengo.com/product/varisaturator/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "VariSaturator.component", target: "/Library/Audio/Plug-Ins/Components/VariSaturator.component"
  artifact "ProTools AAX/VariSaturator.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/VariSaturator.aaxplugin"
  artifact "VariSaturator.vst", target: "/Library/Audio/Plug-Ins/VST/VariSaturator.vst"
  artifact "VariSaturator.vst3", target: "/Library/Audio/Plug-Ins/VST3/VariSaturator.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/VariSaturator.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/VariSaturator.component",
    "/Library/Audio/Plug-Ins/VST/VariSaturator.vst",
    "/Library/Audio/Plug-Ins/VST3/VariSaturator.vst3",
  ]
end
