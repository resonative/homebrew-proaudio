cask "mcdsp-filterbank" do
  version "7.2.35"
  sha256 "48db869a0953b7db23b1d0503fd6a209c7ca7001049e1951b6a4f384b9785afa"

  url "https://downloads.mcdsp.com/v7/NV/Mac/FB_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP FilterBank"
  desc "Flexible analog EQ emulation"
  homepage "https://mcdsp.com/plugin-index/filterbank/"

  auto_updates false

  pkg "FB_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.filterbanke606_nv",
            delete:  [
              "/Applications/McDSP/FilterBank_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/FilterBank_E606_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/FilterBank_F202_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/FilterBank_P606_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/FilterBank_E606.component",
              "/Library/Audio/Plug-Ins/Components/FilterBank_F202.component",
              "/Library/Audio/Plug-Ins/Components/FilterBank_P606.component",
              "/Library/Audio/Plug-Ins/VST3/FilterBank_E606.vst3",
              "/Library/Audio/Plug-Ins/VST3/FilterBank_F202.vst3",
              "/Library/Audio/Plug-Ins/VST3/FilterBank_P606.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/FilterBank E606/",
    "/Library/Audio/Presets/McDSP/FilterBank F202/",
    "/Library/Audio/Presets/McDSP/FilterBank P606/",
    "~/Documents/Pro Tools/Plug-In Settings/FilterBank E606/",
    "~/Documents/Pro Tools/Plug-In Settings/FilterBank F202/",
    "~/Documents/Pro Tools/Plug-In Settings/FilterBank P606/",
  ]
end
