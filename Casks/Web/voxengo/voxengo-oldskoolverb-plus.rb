cask "voxengo-oldskoolverb-plus" do
  version "1.7"
  sha256 "bc3348a6dbd87818cd8dd853607a2e14b21a1434bd57a12d0928610db47da4d6"

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerbPlus_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo OldSkoolVerb Plus"
  desc "Extended general use classic algorithm reverb"
  homepage "https://www.voxengo.com/product/oldskoolverbplus/"

  auto_updates false

  artifact "OldSkoolVerb Plus.component", target: "/Library/Audio/Plug-Ins/Components/OldSkoolVerb Plus.component"
  artifact "ProTools AAX/OldSkoolVerb Plus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb Plus.aaxplugin"
  artifact "OldSkoolVerb Plus.vst", target: "/Library/Audio/Plug-Ins/VST/OldSkoolVerb Plus.vst"
  artifact "OldSkoolVerb Plus.vst3", target: "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb Plus.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb Plus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/OldSkoolVerb Plus.component",
    "/Library/Audio/Plug-Ins/VST/OldSkoolVerb Plus.vst",
    "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb Plus.vst3",
  ]
end
