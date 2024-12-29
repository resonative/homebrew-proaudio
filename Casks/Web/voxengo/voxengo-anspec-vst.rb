cask "voxengo-anspec-vst" do
  version "1.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoAnSpec_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo AnSpec VST"
  desc "Analog-style frequency analyzer"
  homepage "https://www.voxengo.com/product/anspec/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "AnSpec.vst", target: "/Library/Audio/Plug-Ins/VST/AnSpec.vst"
  artifact "AnSpec.vst3", target: "/Library/Audio/Plug-Ins/VST3/AnSpec.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/AnSpec.vst",
    "/Library/Audio/Plug-Ins/VST3/AnSpec.vst3",
  ]
end
