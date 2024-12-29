cask "voxengo-curveeq-au-aax" do
  version "3.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoCurveEQ_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo CurveEQ AU/AAX"
  desc "Linear-phase spline EQ"
  homepage "https://www.voxengo.com/product/curveeq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "CurveEQ.component", target: "/Library/Audio/Plug-Ins/Components/CurveEQ.component"
  artifact "ProTools AAX/CurveEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/CurveEQ.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/CurveEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/CurveEQ.component",
  ]
end
