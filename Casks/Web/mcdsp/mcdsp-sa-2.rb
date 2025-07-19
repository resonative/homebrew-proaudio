cask "mcdsp-sa-2" do
  version "7.2.35"
  sha256 "f90e0690b8d2029bb9f92f11603fa87d4462da745fe5181d3779d4b067394851"

  url "https://downloads.mcdsp.com/v7/NV/Mac/SA2_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP SA-2 Dialog Processor"
  desc "5-band dynamic processor for dialog"
  homepage "https://mcdsp.com/plugin-index/sa-2/"

  auto_updates false

  pkg "SA2_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.sa2dialogprocessor_nv",
            delete:  [
              "/Applications/McDSP/SA2_Dialog_Processor_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/SA2_Dialog_Processor_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/SA2_Dialog_Processor.component",
              "/Library/Audio/Plug-Ins/VST3/SA2_Dialog_Processor.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/SA2 Dialog Processor/",
    "~/Documents/Pro Tools/Plug-In Settings/SA2 Dialog Proc/",
  ]
end
