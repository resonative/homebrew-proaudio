cask "voxengo-oldskoolverb-au-aax" do
  version "2.13"
  sha256 :no_check

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerb_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo OldSkoolVerb AU/AAX"
  desc "Extended general use classic algorithm reverb"
  homepage "https://www.voxengo.com/product/oldskoolverb/"

  auto_updates false
  depends_on macos: ">= :sierra"

  artifact "OldSkoolVerb.component", target: "/Library/Audio/Plug-Ins/Components/OldSkoolVerb.component"
  artifact "ProTools AAX/OldSkoolVerb.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb.aaxplugin"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/OldSkoolVerb.component",
  ]
end
