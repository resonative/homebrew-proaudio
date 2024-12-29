cask "voxengo-polysquasher-au-aax" do
  version "3.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPolysquasher_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Polysquasher AU/AAX"
  desc "Mastering compressor AU/AAX"
  homepage "https://www.voxengo.com/product/polysquasher/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Polysquasher 3.component", target: "/Library/Audio/Plug-Ins/Components/Polysquasher 3.component"
  artifact "ProTools AAX/Polysquasher 3.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Polysquasher 3.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Polysquasher 3.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Polysquasher 3.component",
  ]
end
