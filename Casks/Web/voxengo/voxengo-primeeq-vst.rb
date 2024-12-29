cask "voxengo-primeeq-vst" do
  version "1.8"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoPrimeEQ_#{version.no_dots}_Mac_VST_VST3_setup.dmg"
  name "Voxengo PrimeEQ VST"
  desc "Parametric EQ"
  homepage "https://www.voxengo.com/product/primeeq/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "PrimeEQ.vst", target: "/Library/Audio/Plug-Ins/VST/PrimeEQ.vst"
  artifact "PrimeEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/PrimeEQ.vst3"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/VST/PrimeEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/PrimeEQ.vst3",
  ]
end
