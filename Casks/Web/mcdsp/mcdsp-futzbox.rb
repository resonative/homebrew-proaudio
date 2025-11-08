cask "mcdsp-futzbox" do
  version "7.3.0"
  sha256 "5f270c607e99ff584fbc451d9218a2e051ad7126bccf8c51e7d04e4076037667"

  url "https://downloads.mcdsp.com/v7/NV/Mac/F_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP FutzBox"
  desc "Low fidelity device sound emulation and noise generator"
  homepage "https://mcdsp.com/plugin-index/futzbox/"

  auto_updates false

  pkg "F_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.futzbox_nv",
            delete:  [
              "/Applications/McDSP/FutzBox_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/FutzBox_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/FutzBox.component",
              "/Library/Audio/Plug-Ins/VST3/FutzBox.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/FutzBox/",
    "~/Documents/Pro Tools/Plug-In Settings/FutzBox/",
  ]
end
