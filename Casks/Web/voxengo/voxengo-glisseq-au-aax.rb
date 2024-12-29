cask "voxengo-glisseq-au-aax" do
  version "3.18"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoGlissEQ_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo GlissEQ AU/AAX"
  desc "Dynamic EQ"
  homepage "https://www.voxengo.com/product/glisseq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "GlissEQ.component", target: "/Library/Audio/Plug-Ins/Components/GlissEQ.component"
  artifact "ProTools AAX/GlissEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/GlissEQ.aaxplugin"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/Components/GlissEQ.component",
    "/Library/Application Support/Avid/Audio/Plug-Ins/GlissEQ.aaxplugin",
  ]

  # zap delete: "~/Library/Preferences/Voxengo/Audio Plug-Ins/GlissEQ/"
end
