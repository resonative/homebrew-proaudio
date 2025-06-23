cask "voxengo-elephant" do
  version "5.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoElephant_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Elephant"
  desc "Master limiter"
  homepage "https://www.voxengo.com/product/elephant/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Elephant.component", target: "/Library/Audio/Plug-Ins/Components/Elephant.component"
  artifact "ProTools AAX/Elephant.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Elephant.aaxplugin"
  artifact "Elephant.vst", target: "/Library/Audio/Plug-Ins/VST/Elephant.vst"
  artifact "Elephant.vst3", target: "/Library/Audio/Plug-Ins/VST3/Elephant.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Elephant.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Elephant.component",
    "/Library/Audio/Plug-Ins/VST/Elephant.vst",
    "/Library/Audio/Plug-Ins/VST3/Elephant.vst3",
  ]
end
