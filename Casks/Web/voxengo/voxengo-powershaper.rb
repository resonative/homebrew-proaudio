cask "voxengo-powershaper" do
  version "1.6"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPowershaper_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Powershaper"
  desc "Multi-stage saturator"
  homepage "https://www.voxengo.com/product/powershaper/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "ProTools AAX/Powershaper.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/Powershaper.aaxplugin"
  artifact "Powershaper.component", target: "/Library/Audio/Plug-Ins/Components/Powershaper.component"
  artifact "Powershaper.vst", target: "/Library/Audio/Plug-Ins/VST/Powershaper.vst"
  artifact "Powershaper.vst3", target: "/Library/Audio/Plug-Ins/VST3/Powershaper.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Powershaper.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Powershaper.component",
    "/Library/Audio/Plug-Ins/VST/Powershaper.vst",
    "/Library/Audio/Plug-Ins/VST3/Powershaper.vst3",
  ]
end
