cask "voxengo-powershaper-au-aax" do
  version "1.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPowershaper_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Powershaper AU/AAX"
  desc "Multi-stage saturator"
  homepage "https://www.voxengo.com/product/powershaper/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Powershaper.component", target: "/Library/Audio/Plug-Ins/Components/Powershaper.component"
  artifact "ProTools AAX/Powershaper.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Powershaper.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Powershaper.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Powershaper.component",
  ]
end
