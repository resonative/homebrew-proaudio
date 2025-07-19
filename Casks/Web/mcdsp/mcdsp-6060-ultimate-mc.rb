cask "mcdsp-6060-ultimate-mc" do
  version "7.2.35"
  sha256 "365c7c20a969a9c3ce29a6e2cb5bf039a45d9c61b1d49aa809139d40b714502c"

  url "https://downloads.mcdsp.com/v7/NV/Mac/6060_MC_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 6060 Ultimate Module Collection"
  desc "Modular channel strip plugin"
  homepage "https://mcdsp.com/plugin-index/6060-ultimate-module-collection/"

  auto_updates false

  pkg "6060_MC_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ultimatemc_nv",
            delete:  [
              "/Applications/McDSP/6060_Ultimate_MC_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/6060_Ultimate_MC_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/6060_Ultimate_MC.component",
              "/Library/Audio/Plug-Ins/VST3/6060_Ultimate_MC.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/6060 Ultimate MC/",
    "~/Documents/Pro Tools/Plug-In Settings/6060 Ultimate MC/",
  ]
end
