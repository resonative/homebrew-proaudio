cask "voxengo-transgainer-vst" do
  version "1.14"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoTransGainer_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo TransGainer VST"
  desc "Transient shaper"
  homepage "https://www.voxengo.com/product/transgainer/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "TransGainer.vst", target: "/Library/Audio/Plug-Ins/VST/TransGainer.vst"
  artifact "TransGainer.vst3", target: "/Library/Audio/Plug-Ins/VST3/TransGainer.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/TransGainer.vst",
    "/Library/Audio/Plug-Ins/VST3/TransGainer.vst3",
  ]
end
