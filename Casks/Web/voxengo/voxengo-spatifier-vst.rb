cask "voxengo-spatifier-vst" do
  version "1.10"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoSpatifier_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo Spatifier VST"
  desc "Mono compatible mono-to-stereo widener"
  homepage "https://www.voxengo.com/product/spatifier/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "Spatifier.vst", target: "/Library/Audio/Plug-Ins/VST/Spatifier.vst"
  artifact "Spatifier.vst3", target: "/Library/Audio/Plug-Ins/VST3/Spatifier.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/Spatifier.vst",
    "/Library/Audio/Plug-Ins/VST3/Spatifier.vst3",
  ]
end
