cask "mcdsp-channel-g-compact" do
  version "7.3.0"
  sha256 "af451d17630d09e5efaca5d504ed01ea0351f7a6b7bc40f14bb03d6987646f06"

  url "https://downloads.mcdsp.com/v7/NV/Mac/CGC_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP Channel G Compact"
  desc "Cosnole channel emulation, version of Channel G with smaller DSP footprint"
  homepage "https://mcdsp.com/plugin-index/channel-g-compact/"

  auto_updates false

  pkg "CGC_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.channelgcompact_nv",
            delete:  [
              "/Applications/McDSP/Channel_G_Compact_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Channel_G_Compact_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/Channel_G_Compact.component",
              "/Library/Audio/Plug-Ins/VST3/Channel_G_Compact.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/Channel G Compact/",
    "~/Documents/Pro Tools/Plug-In Settings/G Compact/",
  ]
end
