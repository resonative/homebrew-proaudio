cask "mcdsp-sa-3" do
  version "7.2.35"
  sha256 "83a6a951aff12f9e9bb2ae563430d109659510d4fb89647d2aea440900e756a9"

  url "https://downloads.mcdsp.com/v7/NV/Mac/SA3_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP SA-3 Spectral Processor"
  desc "Spectral dynamic procressor"
  homepage "https://mcdsp.com/plugin-index/sa-3/"

  auto_updates false

  pkg "SA3_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.sa3spectralprocessor_nv",
            delete:  [
              "/Applications/McDSP/SA3_Spectral_Processor_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/SA3_Spectral_Processor_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/SA3_Spectral_Processor.component",
              "/Library/Audio/Plug-Ins/VST3/SA3_Spectral_Processor.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/SA3 Spectral Processor/",
    "~/Documents/Pro Tools/Plug-In Settings/SA3/",
    "~/Documents/Pro Tools/Plug-In Settings/SA3 Processor/",
  ]
end
