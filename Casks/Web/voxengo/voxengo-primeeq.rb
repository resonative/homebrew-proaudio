cask "voxengo-primeeq" do
  version "1.9"
  sha256 "6c5fd706b046d305cab046f68d9cbcd175e0fbb0be24bb0da78bb625e8ba4715"

  url "https://www.voxengo.com/files/VoxengoPrimeEQ_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo PrimeEQ"
  desc "Parametric EQ"
  homepage "https://www.voxengo.com/product/primeeq/"

  auto_updates false

  artifact "PrimeEQ.component", target: "/Library/Audio/Plug-Ins/Components/PrimeEQ.component"
  artifact "ProTools AAX/PrimeEQ.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/PrimeEQ.aaxplugin"
  artifact "PrimeEQ.vst", target: "/Library/Audio/Plug-Ins/VST/PrimeEQ.vst"
  artifact "PrimeEQ.vst3", target: "/Library/Audio/Plug-Ins/VST3/PrimeEQ.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/PrimeEQ.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/PrimeEQ.component",
    "/Library/Audio/Plug-Ins/VST/PrimeEQ.vst",
    "/Library/Audio/Plug-Ins/VST3/PrimeEQ.vst3",
  ]
end
