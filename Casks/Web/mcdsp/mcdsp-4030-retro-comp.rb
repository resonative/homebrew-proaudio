cask "mcdsp-4030-retro-comp" do
  version "7.3.17"
  sha256 "0005f39246f77c64cdfb343dd788a942fe3e6b34976bb3fb520331308cab52ea"

  url "https://downloads.mcdsp.com/v7/NV/Mac/4030_C_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 4020 Retro EQ"
  desc "4-band EQ"
  homepage "https://mcdsp.com/plugin-index/4020-retro/"

  auto_updates false

  pkg "4030_C_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.retrocomp_nv",
            delete:  [
              "/Applications/McDSP/4030_Retro_Comp_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/4030_Retro_Comp_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/4030_Retro_Comp.component",
              "/Library/Audio/Plug-Ins/VST3/4030_Retro_Comp.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/4030 Retro Comp/",
    "~/Documents/Pro Tools/Plug-In Settings/4030 Comp/",
  ]
end
