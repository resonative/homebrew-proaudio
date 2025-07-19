cask "mcdsp-analog-channel" do
  version "7.2.35"
  sha256 "c53c716c492ecbae0dbe293c2ad32374bc883df70bf751c914a0c49a378c8608"

  url "https://downloads.mcdsp.com/v7/NV/Mac/AC_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP Analog Channel"
  desc "Tape and channel preamp emulation"
  homepage "https://mcdsp.com/plugin-index/analog-channel/"

  auto_updates false

  pkg "AC_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.analogchannelac101_nv",
            delete:  [
              "/Applications/McDSP/Analog_Channel_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Analog_Channel_AC101_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Analog_Channel_AC202_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/Analog_Channel_AC101.component",
              "/Library/Audio/Plug-Ins/Components/Analog_Channel_AC202.component",
              "/Library/Audio/Plug-Ins/VST3/Analog_Channel_AC101.vst3",
              "/Library/Audio/Plug-Ins/VST3/Analog_Channel_AC202.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/Analog Channel AC101/",
    "/Library/Audio/Presets/McDSP/Analog Channel AC202/",
    "~/Documents/Pro Tools/Plug-In Settings/AC101/",
    "~/Documents/Pro Tools/Plug-In Settings/AC202/",
  ]
end
