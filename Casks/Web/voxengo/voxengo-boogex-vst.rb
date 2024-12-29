cask "voxengo-boogex-vst" do
  version "3.7"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoBoogex_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Boogex VST"
  desc "Guitar amp/cab simulation"
  homepage "https://www.voxengo.com/product/boogex/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Boogex.vst", target: "/Library/Audio/Plug-Ins/VST/Boogex.vst"
  artifact "Boogex.vst3", target: "/Library/Audio/Plug-Ins/VST3/Boogex.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Boogex.vst",
    "/Library/Audio/Plug-Ins/VST3/Boogex.vst3",
  ]
end
