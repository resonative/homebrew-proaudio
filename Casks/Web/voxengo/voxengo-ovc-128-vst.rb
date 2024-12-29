cask "voxengo-ovc-128-vst" do
  version "1.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOVC128_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo OVC-128 VST"
  desc "Clipper with oversampling"
  homepage "https://www.voxengo.com/product/ovc128/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "OVC-128.vst", target: "/Library/Audio/Plug-Ins/VST/OVC-128.vst"
  artifact "OVC-128.vst3", target: "/Library/Audio/Plug-Ins/VST3/OVC-128.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/OVC-128.vst",
    "/Library/Audio/Plug-Ins/VST3/OVC-128.vst3",
  ]
end
