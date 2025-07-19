cask "mcdsp-6030-ultimate-comp" do
  version "7.2.35"
  sha256 "84a05c070f87585166f2d9a34d2fff95263d57c004cabe441f634ccd97fbff3d"

  url "https://downloads.mcdsp.com/v7/NV/Mac/6030_C_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 6030 Ultimate Compressor"
  desc "10 different models of compressor emulations"
  homepage "https://mcdsp.com/plugin-index/6030-ultimate/"

  auto_updates false

  pkg "6030_C_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ultimatecomp_nv",
            delete:  [
              "/Applications/McDSP/6030_Ultimate_Comp_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/6030_Ultimate_Comp_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/6030_Ultimate_Comp.component",
              "/Library/Audio/Plug-Ins/VST3/6030_Ultimate_Comp.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/6030 Comp/",
    "~/Documents/Pro Tools/Plug-In Settings/6030 Ultimate Comp/",
  ]
end
