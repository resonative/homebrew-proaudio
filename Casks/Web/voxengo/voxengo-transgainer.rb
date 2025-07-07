cask "voxengo-transgainer" do
  version "1.15"
  sha256 "07e5268e7ed8bf0885b842b258b63a702cfb378dc02a9d4c241a9f15be3063cc"

  url "https://www.voxengo.com/files/VoxengoTransGainer_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo TransGainer"
  desc "Transient shaper"
  homepage "https://www.voxengo.com/product/transgainer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "TransGainer.component", target: "/Library/Audio/Plug-Ins/Components/TransGainer.component"
  artifact "ProTools AAX/TransGainer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TransGainer.aaxplugin"
  artifact "TransGainer.vst", target: "/Library/Audio/Plug-Ins/VST/TransGainer.vst"
  artifact "TransGainer.vst3", target: "/Library/Audio/Plug-Ins/VST3/TransGainer.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/TransGainer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/TransGainer.component",
    "/Library/Audio/Plug-Ins/VST/TransGainer.vst",
    "/Library/Audio/Plug-Ins/VST3/TransGainer.vst3",
  ]
end
