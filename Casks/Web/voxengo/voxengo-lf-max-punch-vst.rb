cask "voxengo-lf-max-punch-vst" do
  version "1.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoLFMaxPunch_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo LF Max Punch VST"
  desc "Low frequency enhancer and sub synthesizer"
  homepage "https://www.voxengo.com/product/lfmaxpunch/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "LF Max Punch.vst", target: "/Library/Audio/Plug-Ins/VST/LF Max Punch.vst"
  artifact "LF Max Punch.vst3", target: "/Library/Audio/Plug-Ins/VST3/LF Max Punch.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/LF Max Punch.vst",
    "/Library/Audio/Plug-Ins/VST3/LF Max Punch.vst3",
  ]
end
