cask "voxengo-pha-979" do
  version "2.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPHA979_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo PHA-979"
  desc "Phase alignemnt and rotation utility"
  homepage "https://www.voxengo.com/product/pha979/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "PHA-979.component", target: "/Library/Audio/Plug-Ins/Components/PHA-979.component"
  artifact "ProTools AAX/PHA-979.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/PHA-979.aaxplugin"
  artifact "PHA-979.vst", target: "/Library/Audio/Plug-Ins/VST/PHA-979.vst"
  artifact "PHA-979.vst3", target: "/Library/Audio/Plug-Ins/VST3/PHA-979.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/PHA-979.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/PHA-979.component",
    "/Library/Audio/Plug-Ins/VST/PHA-979.vst",
    "/Library/Audio/Plug-Ins/VST3/PHA-979.vst3",
  ]
end
