cask "mcdsp-ec300" do
  version "7.3.0"
  sha256 "b03b8dad79e4b43de76a0cea917d48d1de3619fe1e2bb108f12cd7bdaec4c703"

  url "https://downloads.mcdsp.com/v7/NV/Mac/EC300_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP EC300 Echo Collection"
  desc "De-esser plugin"
  homepage "https://mcdsp.com/plugin-index/ec300-echo-collection/"

  auto_updates false

  pkg "EC300_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ec300_nv",
            delete:  [
              "/Applications/McDSP/EC300_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/EC300_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/EC300.component",
              "/Library/Audio/Plug-Ins/VST3/EC300.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/EC300/",
    "~/Documents/Pro Tools/Plug-In Settings/EC300/",
  ]
end
