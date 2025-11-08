cask "mcdsp-filterbank" do
  version "7.3.0"
  sha256 "425152f34b05077853d9d7383a27f0248078a589c5d66a90b84aa92c21740700"

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
