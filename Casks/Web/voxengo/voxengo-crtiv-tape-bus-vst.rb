cask "voxengo-crtiv-tape-bus-vst" do
  version "1.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCRTIVTapeBus_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo CRTIV Tape Bus VST"
  desc "Tape emulation"
  homepage "https://www.voxengo.com/product/crtivtapebus/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "CRTIV Tape Bus.vst", target: "/Library/Audio/Plug-Ins/VST/CRTIV Tape Bus.vst"
  artifact "CRTIV Tape Bus.vst3", target: "/Library/Audio/Plug-Ins/VST3/CRTIV Tape Bus.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/CRTIV Tape Bus.vst",
    "/Library/Audio/Plug-Ins/VST3/CRTIV Tape Bus.vst3",
  ]
end
