cask "mcdsp-6034-ultimate-mb" do
  version "7.2.35"
  sha256 "c7e4bd42bd0e92690b35e0ad64d0d4d47d8c03508684f2353b97a0433334f520"

  url "https://downloads.mcdsp.com/v7/NV/Mac/6034_MB_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 6034 Ultimate Multi-Band"
  desc "Multi-band processor with modules from McDSP 6050 Channel Strip"
  homepage "https://mcdsp.com/plugin-index/6034-ultimate/"

  auto_updates false

  pkg "6034_MB_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ultimatemb_nv",
            delete:  [
              "/Applications/McDSP/6034_Ultimate_MB_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/6034_Ultimate_MB_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/6034_Ultimate_MB.component",
              "/Library/Audio/Plug-Ins/VST3/6034_Ultimate_MB.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/6034 Ultimate MB/",
    "~/Documents/Pro Tools/Plug-In Settings/6034 Ultimate MB/",
  ]
end
