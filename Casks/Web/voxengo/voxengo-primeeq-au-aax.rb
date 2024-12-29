cask "voxengo-primeeq-au-aax" do
  version "1.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPrimeEQ_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo PrimeEQ AU/AAX"
  desc "Parametric EQ"
  homepage "https://www.voxengo.com/product/primeeq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "PrimeEQ.component", target: "/Library/Audio/Plug-Ins/Components/PrimeEQ.component"
  artifact "ProTools AAX/PrimeEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/PrimeEQ.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/PrimeEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/PrimeEQ.component",
  ]
end
