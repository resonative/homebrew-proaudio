cask "mcdsp-4030-retro-limiter" do
  version "7.2.35"
  sha256 "a569ccd8ed8c3f8d4a01b661b1f382474193db7e9eb30bdadaeda59b8183a3c8"

  url "https://downloads.mcdsp.com/v7/NV/Mac/4040_L_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 4040 Retro Limiter"
  desc "Look-ahead limiter"
  homepage "https://mcdsp.com/plugin-index/4040-retro/"

  auto_updates false

  pkg "4040_L_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.retrolimiter_nv",
            delete:  [
              "/Applications/McDSP/4040_Retro_Limiter_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/4040_Retro_Limiter_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/4040_Retro_Limiter.component",
              "/Library/Audio/Plug-Ins/VST3/4040_Retro_Limiter.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/4040 Retro Limiter/",
    "~/Documents/Pro Tools/Plug-In Settings/4040 Limiter/",
  ]
end
