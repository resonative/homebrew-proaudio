cask "voxengo-msed-vst" do
  version "3.11"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoMSED_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo MSED VST"
  desc "Midside encoder/decoder and utility"
  homepage "https://www.voxengo.com/product/msed/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "MSED.vst", target: "/Library/Audio/Plug-Ins/VST/MSED.vst"
  artifact "MSED.vst3", target: "/Library/Audio/Plug-Ins/VST3/MSED.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/MSED.vst",
    "/Library/Audio/Plug-Ins/VST3/MSED.vst3",
  ]
end
