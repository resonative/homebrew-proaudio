cask "voxengo-powershaper-vst" do
  version "1.5"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPowershaper_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Powershaper VST"
  desc "Multi-stage saturator"
  homepage "https://www.voxengo.com/product/powershaper/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Powershaper.vst", target: "/Library/Audio/Plug-Ins/VST/Powershaper.vst"
  artifact "Powershaper.vst3", target: "/Library/Audio/Plug-Ins/VST3/Powershaper.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Powershaper.vst",
    "/Library/Audio/Plug-Ins/VST3/Powershaper.vst3",
  ]
end
