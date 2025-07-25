cask "voxengo-msed" do
  version "3.12"
  sha256 "d7c9c5ed3b144b9b9011e63d184fd33b3d1e7b219c482b6c58a347a32e3a8e8b"

  url "https://www.voxengo.com/files/VoxengoMSED_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo MSED"
  desc "Midside encoder/decoder and utility"
  homepage "https://www.voxengo.com/product/msed/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "MSED.component", target: "/Library/Audio/Plug-Ins/Components/MSED.component"
  artifact "ProTools AAX/MSED.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/MSED.aaxplugin"
  artifact "MSED.vst", target: "/Library/Audio/Plug-Ins/VST/MSED.vst"
  artifact "MSED.vst3", target: "/Library/Audio/Plug-Ins/VST3/MSED.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/MSED.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/MSED.component",
    "/Library/Audio/Plug-Ins/VST/MSED.vst",
    "/Library/Audio/Plug-Ins/VST3/MSED.vst3",
  ]
end
