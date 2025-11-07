cask "voxengo-spatifier" do
  version "1.11"
  sha256 "5cce90ce336fc0a3d1c4ddf3238929463a64903744415d3b3b97450c81681c1e"

  url "https://www.voxengo.com/files/VoxengoSpatifier_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Spatifier"
  desc "Mono compatible mono-to-stereo widener"
  homepage "https://www.voxengo.com/product/spatifier/"

  auto_updates false

  artifact "Spatifier.component", target: "/Library/Audio/Plug-Ins/Components/Spatifier.component"
  artifact "ProTools AAX/Spatifier.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Spatifier.aaxplugin"
  artifact "Spatifier.vst", target: "/Library/Audio/Plug-Ins/VST/Spatifier.vst"
  artifact "Spatifier.vst3", target: "/Library/Audio/Plug-Ins/VST3/Spatifier.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Spatifier.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Spatifier.component",
    "/Library/Audio/Plug-Ins/VST/Spatifier.vst",
    "/Library/Audio/Plug-Ins/VST3/Spatifier.vst3",
  ]
end
