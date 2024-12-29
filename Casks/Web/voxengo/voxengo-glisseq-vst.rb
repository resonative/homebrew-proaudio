cask "voxengo-glisseq-vst" do
  version "3.18"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoGlissEQ_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo GlissEQ VST/VST3"
  desc "Dynamic EQ"
  homepage "https://www.voxengo.com/product/glisseq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "GlissEQ.vst", target: "/Library/Audio/Plug-Ins/VST/GlissEQ.vst"
  artifact "GlissEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/GlissEQ.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/GlissEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/GlissEQ.vst3",
  ]

  # zap delete: "~/Library/Preferences/Voxengo/Audio Plug-Ins/GlissEQ/"
end
