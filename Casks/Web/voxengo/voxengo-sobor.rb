cask "voxengo-sobor" do
  version "3.4"
  sha256 "bc0350743dbda9e29e212f2a8afcb57d77a4c655f2131eb8c1b63d0d14283da9"

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
