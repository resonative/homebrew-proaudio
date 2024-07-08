cask "voxengo-span-plus-auaax" do
  version "1.24"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSPANPlus_#{version.delete(".")}_Mac_AU_AAX_setup.dmg"
  name "Voxengo SPAN Plus AU AAX"
  desc "Extended Spectrum Analyzer AU/AAX"
  homepage "https://www.voxengo.com/product/spanplus/"

  livecheck do
    cask "voxengo-span-plus-auaax"
  end

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "SPAN Plus.component", target: "~/Scrap/brewinstalltest/SPAN Plus.component"
  artifact "ProTools AAX/SPAN Plus.aaxplugin", target: "~/Scrap/brewinstalltest/SPAN Plus.aaxplugin"

  uninstall delete: [
    "~/Scrap/brewinstalltest/SPAN Plus.component",
    "~/Scrap/brewinstalltest/SPAN Plus.aaxplugin"
  ]

end