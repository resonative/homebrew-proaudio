cask "mcdsp-ml8000" do
  version "7.3.0"
  sha256 "2fdd5fd40dafb6a640e2b9f81b0b65b0af31d4a20c935a64fa74eced085c840c"

  url "https://downloads.mcdsp.com/v7/NV/Mac/ML8000_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP ML8000 Advanced Limiter"
  desc "Multi-stage limiter"
  homepage "https://mcdsp.com/plugin-index/ml8000/"

  auto_updates false

  pkg "ML8000_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ml8000_nv",
            delete:  [
              "/Applications/McDSP/ML8000_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/ML8000_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/ML8000.component",
              "/Library/Audio/Plug-Ins/VST3/ML8000.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/ML8000/",
    "~/Documents/Pro Tools/Plug-In Settings/ML8000 Limiter/",
  ]
end
