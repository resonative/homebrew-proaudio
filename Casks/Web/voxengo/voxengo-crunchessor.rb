cask "voxengo-crunchessor-vst" do
  version "2.20"
  sha256 "797f79566ff2cf50b344d6ded3020e66aff4668afcaf25d5809196ac5ea4a672"

  url "https://www.voxengo.com/files/VoxengoCrunchessor_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Crunchessor VST"
  desc "Character compressor"
  homepage "https://www.voxengo.com/product/crunchessor/"

  auto_updates false

  artifact "Crunchessor.component", target: "/Library/Audio/Plug-Ins/Components/Crunchessor.component"
  artifact "ProTools AAX/Crunchessor.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Crunchessor.aaxplugin"
  artifact "Crunchessor.vst", target: "/Library/Audio/Plug-Ins/VST/Crunchessor.vst"
  artifact "Crunchessor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Crunchessor.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Crunchessor.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Crunchessor.component",
    "/Library/Audio/Plug-Ins/VST/Crunchessor.vst",
    "/Library/Audio/Plug-Ins/VST3/Crunchessor.vst3",
  ]
end
