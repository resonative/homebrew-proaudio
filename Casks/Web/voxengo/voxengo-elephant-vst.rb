cask "voxengo-elephant-vst" do
  version "5.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoElephant_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Elephant VST"
  desc "Master limiter"
  homepage "https://www.voxengo.com/product/elephant/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Elephant.vst", target: "/Library/Audio/Plug-Ins/VST/Elephant.vst"
  artifact "Elephant.vst3", target: "/Library/Audio/Plug-Ins/VST3/Elephant.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Elephant.vst",
    "/Library/Audio/Plug-Ins/VST3/Elephant.vst3",
  ]
end
