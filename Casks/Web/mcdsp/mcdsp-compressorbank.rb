cask "mcdsp-compressorbank" do
  version "7.3.0"
  sha256 "1165da90d945ef7511db674a03cf867a78e980821ff7fa70c66450b6cb4286e6"

  url "https://downloads.mcdsp.com/v7/NV/Mac/CB_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP CompressorBank"
  desc "Flexible compressor with multiple compressor curves"
  homepage "https://mcdsp.com/plugin-index/compressor-bank/"

  auto_updates false

  pkg "CB_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.compressorbankcb101_nv",
            delete:  [
              "/Applications/McDSP/CompressorBank_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/CompressorBank_CB101_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/CompressorBank_CB202_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/CompressorBank_CB303_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/CompressorBank_CB101.component",
              "/Library/Audio/Plug-Ins/Components/CompressorBank_CB202.component",
              "/Library/Audio/Plug-Ins/Components/CompressorBank_CB303.component",
              "/Library/Audio/Plug-Ins/VST3/CompressorBank_CB101.vst3",
              "/Library/Audio/Plug-Ins/VST3/CompressorBank_CB202.vst3",
              "/Library/Audio/Plug-Ins/VST3/CompressorBank_CB303.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/CompressorBank CB101/",
    "/Library/Audio/Presets/McDSP/CompressorBank CB202/",
    "/Library/Audio/Presets/McDSP/CompressorBank CB303/",
    "~/Documents/Pro Tools/Plug-In Settings/CB101/",
    "~/Documents/Pro Tools/Plug-In Settings/CB202/",
    "~/Documents/Pro Tools/Plug-In Settings/CB303/",
  ]
end
