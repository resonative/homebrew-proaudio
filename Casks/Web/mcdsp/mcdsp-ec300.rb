cask "mcdsp-ec300" do
  version "7.2.35"
  sha256 "84a4f009e2f01e9993d60ec43e4d0bb9d10ac6f1f33516fdd183bae6b5d1d753"

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
