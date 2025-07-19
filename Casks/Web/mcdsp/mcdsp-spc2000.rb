cask "mcdsp-spc2000" do
  version "7.2.35"
  sha256 "2cf6bd0c783583df545f730062a1d55b16b76748fd52a5447b254e84182fb748"

  url "https://downloads.mcdsp.com/v7/NV/Mac/SPC_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP SPC2000 Serial/Parallel Compressor"
  desc "Multi-stage compressor"
  homepage "https://mcdsp.com/plugin-index/spc2000/"

  auto_updates false

  pkg "SPC_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.spc2000spc202_nv",
            delete:  [
              "/Applications/McDSP/SPC2000_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/SPC2000_SPC202_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/SPC2000_SPC303_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/SPC2000_SPC404_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/SPC2000_SPC202.component",
              "/Library/Audio/Plug-Ins/Components/SPC2000_SPC303.component",
              "/Library/Audio/Plug-Ins/Components/SPC2000_SPC404.component",
              "/Library/Audio/Plug-Ins/VST3/SPC2000_SPC202.vst3",
              "/Library/Audio/Plug-Ins/VST3/SPC2000_SPC303.vst3",
              "/Library/Audio/Plug-Ins/VST3/SPC2000_SPC404.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/SPC2000 SPC202/",
    "/Library/Audio/Presets/McDSP/SPC2000 SPC303/",
    "/Library/Audio/Presets/McDSP/SPC2000 SPC404/",
    "~/Documents/Pro Tools/Plug-In Settings/SPC202/",
    "~/Documents/Pro Tools/Plug-In Settings/SPC303/",
    "~/Documents/Pro Tools/Plug-In Settings/SPC404/",
  ]
end
