cask "voxengo-curveeq-vst" do
  version "3.15"
  sha256 :no_check
  url "https://www.voxengo.com/files/VoxengoCurveEQ_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo CurveEQ VST"
  desc "Linear-phase spline EQ"
  homepage "https://www.voxengo.com/product/curveeq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "CurveEQ.vst", target: "/Library/Audio/Plug-Ins/VST/CurveEQ.vst"
  artifact "CurveEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/CurveEQ.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/CurveEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/CurveEQ.vst3",
  ]
end
