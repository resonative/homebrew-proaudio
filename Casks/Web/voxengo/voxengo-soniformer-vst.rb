cask "voxengo-soniformer-vst" do
  version "3.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSoniformer_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Soniformer VST"
  desc "Spectral dynamics processor"
  homepage "https://www.voxengo.com/product/soniformer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Soniformer.vst", target: "/Library/Audio/Plug-Ins/VST/Soniformer.vst"
  artifact "Soniformer.vst3", target: "/Library/Audio/Plug-Ins/VST3/Soniformer.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Soniformer.vst",
    "/Library/Audio/Plug-Ins/VST3/Soniformer.vst3",
  ]
end
