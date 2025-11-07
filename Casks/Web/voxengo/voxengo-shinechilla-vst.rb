cask "voxengo-shinechilla-vst" do
  version "1.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoShinechilla_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Shinechilla VST"
  desc "Spectral saturator"
  homepage "https://www.voxengo.com/product/shinechilla/"

  auto_updates false

  artifact "Shinechilla.vst", target: "/Library/Audio/Plug-Ins/VST/Shinechilla.vst"
  artifact "Shinechilla.vst3", target: "/Library/Audio/Plug-Ins/VST3/Shinechilla.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Shinechilla.vst",
    "/Library/Audio/Plug-Ins/VST3/Shinechilla.vst3",
  ]
end
