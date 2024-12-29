cask "voxengo-tube-amp-au-aax" do
  version "2.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTubeAmp_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Tube Amp AU/AAX"
  desc "Tube overdrive"
  homepage "https://www.voxengo.com/product/tubeamp/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Tube Amp.component", target: "/Library/Audio/Plug-Ins/Components/Tube Amp.component"
  artifact "ProTools AAX/Tube Amp.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Tube Amp.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Tube Amp.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Tube Amp.component",
  ]
end
