cask "voxengo-oldskoolverb-plus-au-aax" do
  version "1.6"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerbPlus_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo OldSkoolVerb Plus AU/AAX"
  desc "Extended general use classic algorithm reverb"
  homepage "https://www.voxengo.com/product/oldskoolverbplus/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "OldSkoolVerb Plus.component", target: "/Library/Audio/Plug-Ins/Components/OldSkoolVerb Plus.component"
  artifact "ProTools AAX/OldSkoolVerb Plus.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb Plus.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb Plus.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/OldSkoolVerb Plus.component",
  ]
end
