cask "mcdsp-6050-ultimate-cs" do
  version "7.3.0"
  sha256 "c423b5ea9117d30db2171d6bc65b30d26365ada093eb92a268052ed805401e61"

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
