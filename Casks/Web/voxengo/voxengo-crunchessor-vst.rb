cask "voxengo-crunchessor-vst" do
  version "2.19"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCrunchessor_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Crunchessor VST"
  desc "Character compressor"
  homepage "https://www.voxengo.com/product/crunchessor/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Crunchessor.vst", target: "/Library/Audio/Plug-Ins/VST/Crunchessor.vst"
  artifact "Crunchessor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Crunchessor.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Crunchessor.vst",
    "/Library/Audio/Plug-Ins/VST3/Crunchessor.vst3",
  ]
end
