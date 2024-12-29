cask "voxengo-lf-max-punch-au-aax" do
  version "1.15"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoLFMaxPunch_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo LF Max Punch AU/AAX"
  desc "Low frequency enhancer and sub synthesizer"
  homepage "https://www.voxengo.com/product/lfmaxpunch/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "LF Max Punch.component", target: "/Library/Audio/Plug-Ins/Components/LF Max Punch.component"
  artifact "ProTools AAX/LF Max Punch.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/LF Max Punch.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/LF Max Punch.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/LF Max Punch.component",
  ]
end
