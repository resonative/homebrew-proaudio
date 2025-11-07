cask "voxengo-polysquasher" do
  version "3.6"
  sha256 "86af77bb9f44cfb06b65080c47b57e546a153724b2f73a12931b6d83960e2eb6"

  url "https://www.voxengo.com/files/VoxengoPolysquasher_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Polysquasher"
  desc "Mastering compressor"
  homepage "https://www.voxengo.com/product/polysquasher/"

  auto_updates false

  artifact "Polysquasher 3.component", target: "/Library/Audio/Plug-Ins/Components/Polysquasher 3.component"
  artifact "ProTools AAX/Polysquasher 3.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Polysquasher 3.aaxplugin"
  artifact "Polysquasher 3.vst", target: "/Library/Audio/Plug-Ins/VST/Polysquasher 3.vst"
  artifact "Polysquasher 3.vst3", target: "/Library/Audio/Plug-Ins/VST3/Polysquasher 3.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Polysquasher 3.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Polysquasher 3.component",
    "/Library/Audio/Plug-Ins/VST/Polysquasher 3.vst",
    "/Library/Audio/Plug-Ins/VST3/Polysquasher 3.vst3",
  ]
end
