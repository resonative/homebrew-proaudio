cask "voxengo-spatifier" do
  version "1.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSpatifier_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Spatifier"
  desc "Mono compatible mono-to-stereo widener"
  homepage "https://www.voxengo.com/product/spatifier/"

  auto_updates false
  depends_on macos: ">= :sierra"

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
