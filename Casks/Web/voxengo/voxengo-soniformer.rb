cask "voxengo-soniformer" do
  version "3.16"
  sha256 "a6dc67ef5d8a4ea7bde707cb1e957ed971ea7cad6e5d30f163596b34319e0abc"

  url "https://www.voxengo.com/files/VoxengoSoniformer_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Soniformers"
  desc "Spectral dynamic processor"
  homepage "https://www.voxengo.com/product/soniformer/"

  auto_updates false

  artifact "Soniformer.component", target: "/Library/Audio/Plug-Ins/Components/Soniformer.component"
  artifact "ProTools AAX/Soniformer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Soniformer.aaxplugin"
  artifact "Soniformer.vst", target: "/Library/Audio/Plug-Ins/VST/Soniformer.vst"
  artifact "Soniformer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Soniformer.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Soniformer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Soniformer.component",
    "/Library/Audio/Plug-Ins/VST/Soniformer.vst",
    "/Library/Audio/Plug-Ins/VST3/Soniformer.vst3",
  ]
end
