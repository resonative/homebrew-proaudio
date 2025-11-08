cask "mcdsp-ml4000" do
  version "7.3.0"
  sha256 "8fdd59cd097680e7338962f65b8c82d6157501f25d92e6c38eddc5e131f30708"

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
