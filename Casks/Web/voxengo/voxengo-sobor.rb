cask "voxengo-sobor" do
  version "3.4"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSobor_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Sobor"
  desc "General purpose stereo reverb"
  homepage "https://www.voxengo.com/product/sobor/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Sobor.component", target: "/Library/Audio/Plug-Ins/Components/Sobor.component"
  artifact "ProTools AAX/Sobor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Sobor.aaxplugin"
  artifact "Sobor.vst", target: "/Library/Audio/Plug-Ins/VST/Sobor.vst"
  artifact "Sobor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Sobor.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Sobor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Sobor.component",
    "/Library/Audio/Plug-Ins/VST/Sobor.vst",
    "/Library/Audio/Plug-Ins/VST3/Sobor.vst3",
  ]
end
