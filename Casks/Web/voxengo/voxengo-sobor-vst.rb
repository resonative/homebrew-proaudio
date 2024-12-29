cask "voxengo-sobor-vst" do
  version "3.3"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSobor_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Sobor VST"
  desc "General purpose stereo reverb"
  homepage "https://www.voxengo.com/product/sobor/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Sobor.vst", target: "/Library/Audio/Plug-Ins/VST/Sobor.vst"
  artifact "Sobor.vst3", target: "/Library/Audio/Plug-Ins/VST3/Sobor.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Sobor.vst",
    "/Library/Audio/Plug-Ins/VST3/Sobor.vst3",
  ]
end
