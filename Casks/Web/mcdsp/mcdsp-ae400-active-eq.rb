cask "mcdsp-ae400-active-eq" do
  version "7.3.0"
  sha256 "faee92506192188ab755432acf6809c0c2a91b75e1a8a1d290d97da65d4f4c3e"

  url "https://downloads.mcdsp.com/v7/NV/Mac/AE_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP AE400 Active EQ"
  desc "4-Band dynamic EQ"
  homepage "https://mcdsp.com/plugin-index/ae400/"

  auto_updates false

  pkg "AE_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ae400activeeq_nv",
            delete:  [
              "/Applications/McDSP/AE400_Active_EQ_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/AE400_Active_EQ_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/AE400_Active_EQ.component",
              "/Library/Audio/Plug-Ins/VST3/AE400_Active_EQ.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/AE400 Active EQ/",
    "~/Documents/Pro Tools/Plug-In Settings/AE400 Active EQ/",
  ]
end
