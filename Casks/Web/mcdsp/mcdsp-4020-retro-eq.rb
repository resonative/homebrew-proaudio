cask "mcdsp-4020-retro-eq" do
  version "7.3.0"
  sha256 "7b50719067fc460cc7958bd6e3305595e52e0d2b414d045ea8eb2545c580ce24"

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
