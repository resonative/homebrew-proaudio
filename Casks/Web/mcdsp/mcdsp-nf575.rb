cask "mcdsp-nf575" do
  version "7.2.35"
  sha256 "06a8e5600ca46c600c225be3519a233ab031513b34d060c622722f86fcad729a"

  url "https://downloads.mcdsp.com/v7/NV/Mac/NF_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP NF575 Noise Filter"
  desc "Notch filter bank"
  homepage "https://mcdsp.com/plugin-index/nf575/"

  auto_updates false

  pkg "NF_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.nf575_nv",
            delete:  [
              "/Applications/McDSP/NF575_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/NF575_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/NF575.component",
              "/Library/Audio/Plug-Ins/VST3/NF575.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/NF575/",
    "~/Documents/Pro Tools/Plug-In Settings/NF575/",
  ]
end
