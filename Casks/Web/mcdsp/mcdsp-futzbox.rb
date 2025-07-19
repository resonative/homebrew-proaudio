cask "mcdsp-futzbox" do
  version "7.2.35"
  sha256 "0144aed06a30a1b6f4f11a937d9ac327e5ee0bd1f45c5a795a346eb43abf2f6d"

  url "https://downloads.mcdsp.com/v7/NV/Mac/F_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP FutzBox"
  desc "Low fidelity device sound emulation and noise generator"
  homepage "https://mcdsp.com/plugin-index/futzbox/"

  auto_updates false

  pkg "F_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.futzbox_nv",
            delete:  [
              "/Applications/McDSP/FutzBox_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/FutzBox_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/FutzBox.component",
              "/Library/Audio/Plug-Ins/VST3/FutzBox.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/FutzBox/",
    "~/Documents/Pro Tools/Plug-In Settings/FutzBox/",
  ]
end
