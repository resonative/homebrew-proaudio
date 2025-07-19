cask "mcdsp-ml8000" do
  version "7.2.35"
  sha256 "4af7c3075508a5f66c692446aa2a8dce75864728926f18b264810e02e6b44c23"

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
