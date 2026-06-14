cask "mcdsp-nr800" do
  version "7.3.17"
  sha256 :no_check

  url "https://downloads.mcdsp.com/v7/NV/Mac/NR800_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP NR800 Noise Reduction Processor"
  desc "Real-time noise reudction processor"
  homepage "https://mcdsp.com/plugin-index/nr800/"

  auto_updates false

  pkg "NR800_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.nr800_nv",
            delete:  [
              "/Applications/McDSP/NR800_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/NR800_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/NR800.component",
              "/Library/Audio/Plug-Ins/VST3/NR800.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/NR800/",
    "~/Documents/Pro Tools/Plug-In Settings/NR800/",
  ]
end
