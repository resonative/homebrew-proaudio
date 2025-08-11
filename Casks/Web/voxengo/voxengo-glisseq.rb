cask "voxengo-glisseq" do
  version "3.19"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoGlissEQ_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo GlissEQ"
  desc "Dynamic EQ"
  homepage "https://www.voxengo.com/product/glisseq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "ProTools AAX/GlissEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/GlissEQ.aaxplugin"
  artifact "GlissEQ.component", target: "/Library/Audio/Plug-Ins/Components/GlissEQ.component"
  artifact "GlissEQ.vst", target: "/Library/Audio/Plug-Ins/VST/GlissEQ.vst"
  artifact "GlissEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/GlissEQ.vst3"


  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/GlissEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/GlissEQ.component",
    "/Library/Audio/Plug-Ins/VST/GlissEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/GlissEQ.vst3",
  ]

  # zap delete: "~/Library/Preferences/Voxengo/Audio Plug-Ins/GlissEQ/"
end
