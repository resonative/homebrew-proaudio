cask "voxengo-curveeq" do
  version "3.16"
  sha256 "9a45b72c053d210ef6e8676932a754328b3d8d239ba0e2437a928757bc34e18e"

  url "https://www.voxengo.com/files/VoxengoCurveEQ_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo CurveEQ"
  desc "Linear-phase spline EQ"
  homepage "https://www.voxengo.com/product/curveeq/"

  auto_updates false

  artifact "CurveEQ.component", target: "/Library/Audio/Plug-Ins/Components/CurveEQ.component"
  artifact "ProTools AAX/CurveEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/CurveEQ.aaxplugin"
  artifact "CurveEQ.vst", target: "/Library/Audio/Plug-Ins/VST/CurveEQ.vst"
  artifact "CurveEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/CurveEQ.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/CurveEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/CurveEQ.component",
    "/Library/Audio/Plug-Ins/VST/CurveEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/CurveEQ.vst3",
  ]
end
