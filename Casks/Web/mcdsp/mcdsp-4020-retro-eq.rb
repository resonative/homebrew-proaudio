cask "mcdsp-4020-retro-eq" do
  version "7.2.35"
  sha256 "92f1672e774c30b44e18f8b29d51182f1831a6cb6da1c6bc73cbde53694c5bac"

  url "https://downloads.mcdsp.com/v7/NV/Mac/4020_E_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 4020 Retro EQ"
  desc "4-band EQ"
  homepage "https://mcdsp.com/plugin-index/4020-retro/"

  auto_updates false

  pkg "4020_E_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.retroeq_nv",
            delete:  [
              "/Applications/McDSP/4020_Retro_EQ_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/4020_Retro_EQ_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/4020_Retro_EQ.component",
              "/Library/Audio/Plug-Ins/VST3/4020_Retro_EQ.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/4020 Retro EQ/",
    "~/Documents/Pro Tools/Plug-In Settings/4020 EQ/",
  ]
end
