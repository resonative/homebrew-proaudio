cask "voxengo-warmifier" do
  version "2.9"
  sha256 "ffbae464f76ee5eec64639b78ee16070a784aa531035c920a3d71822d9a37195"

  url "https://www.voxengo.com/files/VoxengoWarmifier_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Warmifier"
  desc "Subtle tube saturation"
  homepage "https://www.voxengo.com/product/warmifier/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Warmifier.component", target: "/Library/Audio/Plug-Ins/Components/Warmifier.component"
  artifact "ProTools AAX/Warmifier.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Warmifier.aaxplugin"
  artifact "Warmifier.vst", target: "/Library/Audio/Plug-Ins/VST/Warmifier.vst"
  artifact "Warmifier.vst3", target: "/Library/Audio/Plug-Ins/VST3/Warmifier.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Warmifier.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Warmifier.component",
    "/Library/Audio/Plug-Ins/VST/Warmifier.vst",
    "/Library/Audio/Plug-Ins/VST3/Warmifier.vst3",
  ]
end
