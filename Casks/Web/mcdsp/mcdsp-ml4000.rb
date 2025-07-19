cask "mcdsp-ml4000" do
  version "7.2.35"
  sha256 "d7003b6f021a06e73ef8d428c70d336178c30e691b68fa85dab19704eae3d74e"

  url "https://downloads.mcdsp.com/v7/NV/Mac/ML_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP ML4000 Mastering Limiter"
  desc "Multi-band mastering limiter"
  homepage "https://mcdsp.com/plugin-index/ml4000/"

  auto_updates false

  pkg "ML_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ml4000ml1_nv",
            delete:  [
              "/Applications/McDSP/ML4000_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/ML4000_ML1_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/ML4000_ML4_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/ML4000_ML1.component",
              "/Library/Audio/Plug-Ins/Components/ML4000_ML4.component",
              "/Library/Audio/Plug-Ins/VST3/ML4000_ML1.vst3",
              "/Library/Audio/Plug-Ins/VST3/ML4000_ML4.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/ML4000 ML1/",
    "/Library/Audio/Presets/McDSP/ML4000 ML4/",
    "~/Documents/Pro Tools/Plug-In Settings/ML1 Limiter/",
    "~/Documents/Pro Tools/Plug-In Settings/ML4 Multi-Band/",
  ]
end
