cask "voxengo-marvel-geq-vst" do
  version "1.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoMarvelGEQ_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Marvel GEQ VST"
  desc "Linear phase 16-band GEQ"
  homepage "https://www.voxengo.com/product/marvelgeq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Marvel GEQ.vst", target: "/Library/Audio/Plug-Ins/VST/Marvel GEQ.vst"
  artifact "Marvel GEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/Marvel GEQ.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Marvel GEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/Marvel GEQ.vst3",
  ]
end
