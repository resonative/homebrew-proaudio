cask "voxengo-oldskoolverb" do
  version "2.14"
  sha256 "f6ba1416e31d16d52becf8df7a602d9da22c5c015419fdada0ad8282f4ad2008"

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerb_#{version.no_dots}_Mac_AU_AAX_VST_setup.dmg"
  name "Voxengo OldSkoolVerb"
  desc "Extended general use classic algorithm reverb"
  homepage "https://www.voxengo.com/product/oldskoolverb/"

  auto_updates false

  artifact "OldSkoolVerb.component", target: "/Library/Audio/Plug-Ins/Components/OldSkoolVerb.component"
  artifact "ProTools AAX/OldSkoolVerb.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb.aaxplugin"
  artifact "OldSkoolVerb.vst", target: "/Library/Audio/Plug-Ins/VST/OldSkoolVerb.vst"
  artifact "OldSkoolVerb.vst3", target: "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb.vst3"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/OldSkoolVerb.component",
    "/Library/Audio/Plug-Ins/VST/OldSkoolVerb.vst",
    "/Library/Audio/Plug-Ins/VST3/OldSkoolVerb.vst3",
  ]
end
