cask "voxengo-teote-vst" do
  version "1.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTEOTE_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo TEOTE AU/AAX"
  desc "Spectral balancer AU/AAX"
  homepage "https://www.voxengo.com/product/teote/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "TEOTE.vst", target: "/Library/Audio/Plug-Ins/VST/TEOTE.vst"
  artifact "TEOTE.vst3", target: "/Library/Audio/Plug-Ins/VST3/TEOTE.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/TEOTE.vst",
    "/Library/Audio/Plug-Ins/VST3/TEOTE.vst3",
  ]
end
