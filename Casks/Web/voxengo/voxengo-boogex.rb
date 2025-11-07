cask "voxengo-boogex" do
  version "3.8"
  sha256 "0a2e3d5e5230aae9f05a45d0c6d5494a0e181c4261c84e298016fd327a17072b"

  url "https://www.voxengo.com/files/VoxengoBoogex_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo Boogex"
  desc "Guitar amp/cab simulation"
  homepage "https://www.voxengo.com/product/boogex/"

  auto_updates false

  artifact "Boogex.component", target: "/Library/Audio/Plug-Ins/Components/Boogex.component"
  artifact "ProTools AAX/Boogex.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Boogex.aaxplugin"
  artifact "Boogex.vst", target: "/Library/Audio/Plug-Ins/VST/Boogex.vst"
  artifact "Boogex.vst3", target: "/Library/Audio/Plug-Ins/VST3/Boogex.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Boogex.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Boogex.component",
    "/Library/Audio/Plug-Ins/VST/Boogex.vst",
    "/Library/Audio/Plug-Ins/VST3/Boogex.vst3",
  ]
end
