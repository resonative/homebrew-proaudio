cask "mcdsp-6050-ultimate-cs" do
  version "7.2.35"
  sha256 "f70f1c86d322fb09be52a088176f662307a5640499d2a7a3b9e28b4e8cfe8bea"

  url "https://downloads.mcdsp.com/v7/NV/Mac/6050_CS_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 6050 Ultimate Channel Strip"
  desc "Modular channel strip"
  homepage "https://mcdsp.com/plugin-index/6050-ultimate-channel-strip/"

  auto_updates false

  pkg "6050_CS_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ultimatecs_nv",
            delete:  [
              "/Applications/McDSP/6050_Ultimate_CS_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/6050_Ultimate_CS_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/6050_Ultimate_CS.component",
              "/Library/Audio/Plug-Ins/VST3/6050_Ultimate_CS.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/6050 Ultimate CS/",
    "~/Documents/Pro Tools/Plug-In Settings/6050 Ultimate CS/",
  ]
end
