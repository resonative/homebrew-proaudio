cask "mcdsp-sa-3" do
  version "7.3.0"
  sha256 "9ef4214cfb1e4a17769e2e3d69f58fd80c2729a28b339ceb17b27fb7ed547962"

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
