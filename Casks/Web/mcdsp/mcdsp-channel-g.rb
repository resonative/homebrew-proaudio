cask "mcdsp-channel-g" do
  version "7.2.35"
  sha256 "ecb55eb23adea54fe4260926b318b1a40564f62ea8fa225498bdef22efb0ee67"

  url "https://downloads.mcdsp.com/v7/NV/Mac/CG_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP Channel G"
  desc "Cosnole channel emulation"
  homepage "https://mcdsp.com/plugin-index/channel-g/"

  auto_updates false

  pkg "CG_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.channelgconsole_nv",
            delete:  [
              "/Applications/McDSP/Channel_G_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Channel_G_Console_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Channel_G_Dyn_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Channel_G_EQ_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/Channel_G_Console.component",
              "/Library/Audio/Plug-Ins/Components/Channel_G_Dyn.component",
              "/Library/Audio/Plug-Ins/Components/Channel_G_EQ.component",
              "/Library/Audio/Plug-Ins/VST3/Channel_G_Console.vst3",
              "/Library/Audio/Plug-Ins/VST3/Channel_G_Dyn.vst3",
              "/Library/Audio/Plug-Ins/VST3/Channel_G_EQ.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/Channel G Console/",
    "/Library/Audio/Presets/McDSP/Channel G Dyn/",
    "/Library/Audio/Presets/McDSP/Channel G EQ/",
    "~/Documents/Pro Tools/Plug-In Settings/Channel G EQ/",
    "~/Documents/Pro Tools/Plug-In Settings/G Cosnole/",
    "~/Documents/Pro Tools/Plug-In Settings/G Dynamics/",
  ]
end
