cask "voxengo-tube-amp-vst" do
  version "2.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTubeAmp_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Tube Amp VST"
  desc "Tube overdrive"
  homepage "https://www.voxengo.com/product/tubeamp/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Tube Amp.vst", target: "/Library/Audio/Plug-Ins/VST/Tube Amp.vst"
  artifact "Tube Amp.vst3", target: "/Library/Audio/Plug-Ins/VST3/Tube Amp.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Tube Amp.vst",
    "/Library/Audio/Plug-Ins/VST3/Tube Amp.vst3",
  ]
end
