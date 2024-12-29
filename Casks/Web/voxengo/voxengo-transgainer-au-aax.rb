cask "voxengo-transgainer-au-aax" do
  version "1.14"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTransGainer_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo TransGainer AU/AAX"
  desc "Transient shaper"
  homepage "https://www.voxengo.com/product/transgainer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "TransGainer.component", target: "/Library/Audio/Plug-Ins/Components/TransGainer.component"
  artifact "ProTools AAX/TransGainer.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TransGainer.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/TransGainer.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/TransGainer.component",
  ]
end
