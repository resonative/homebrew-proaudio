cask "mcdsp-de555" do
  version "7.3.17"
  sha256 :no_check

  url "https://downloads.mcdsp.com/v7/NV/Mac/DE_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP DE555 Advanced De-esser"
  desc "De-esser plugin"
  homepage "https://mcdsp.com/plugin-index/de555/"

  auto_updates false

  pkg "DE_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.de555_nv",
            delete:  [
              "/Applications/McDSP/DE555_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/DE555_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/DE555.component",
              "/Library/Audio/Plug-Ins/VST3/DE555.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/DE555/",
    "~/Documents/Pro Tools/Plug-In Settings/DE555/",
  ]
end
