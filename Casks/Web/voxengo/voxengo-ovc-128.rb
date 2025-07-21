cask "voxengo-ovc-128-au-aax" do
  version "1.14"
  sha256 "cc390b11491545f17bd5134b957a80d6e45533d7066a664833c3c0b5d9af3c47"

  url "https://www.voxengo.com/files/VoxengoOVC128_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo OVC-128"
  desc "Clipper with oversampling"
  homepage "https://www.voxengo.com/product/ovc128/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "OVC-128.component", target: "/Library/Audio/Plug-Ins/Components/OVC-128.component"
  artifact "ProTools AAX/OVC-128.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/OVC-128.aaxplugin"
  artifact "OVC-128.vst", target: "/Library/Audio/Plug-Ins/VST/OVC-128.vst"
  artifact "OVC-128.vst3", target: "/Library/Audio/Plug-Ins/VST3/OVC-128.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/OVC-128.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/OVC-128.component",
    "/Library/Audio/Plug-Ins/VST/OVC-128.vst",
    "/Library/Audio/Plug-Ins/VST3/OVC-128.vst3",
  ]
end
