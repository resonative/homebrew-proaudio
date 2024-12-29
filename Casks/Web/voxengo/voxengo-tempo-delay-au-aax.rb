cask "voxengo-tempo-delay-au-aax" do
  version "2.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTempoDelay_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Tempo Delay AU/AAX"
  desc "General purpose delay with tremolo"
  homepage "https://www.voxengo.com/product/tempodelay/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Tempo Delay.component", target: "/Library/Audio/Plug-Ins/Components/Tempo Delay.component"
  artifact "ProTools AAX/Tempo Delay.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Tempo Delay.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Tempo Delay.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Tempo Delay.component",
  ]
end
