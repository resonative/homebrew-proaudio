cask "mcdsp-sa-2" do
  version "7.3.0"
  sha256 "7141f8884ab2148a46c2f6283017c66488a8b9849fe3ede2006af0ebc6bd4f1c"

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
