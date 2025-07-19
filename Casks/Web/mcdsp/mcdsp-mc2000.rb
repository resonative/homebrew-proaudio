cask "mcdsp-mc2000" do
  version "7.2.35"
  sha256 "b1c858931032d86a57084924fe0771dca8ddaa318b8f1de26c03a6678013e651"

  url "https://downloads.mcdsp.com/v7/NV/Mac/MC_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP MC2000 Multi-band Compressor"
  desc "Multi-band compressor"
  homepage "https://mcdsp.com/plugin-index/mc2000/"

  auto_updates false

  pkg "MC_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.mc2000mc202_nv",
            delete:  [
              "/Applications/McDSP/MC2000_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/MC2000_MC202_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/MC2000_MC303_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/MC2000_MC404_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/MC2000_MC202.component",
              "/Library/Audio/Plug-Ins/Components/MC2000_MC303.component",
              "/Library/Audio/Plug-Ins/Components/MC2000_MC404.component",
              "/Library/Audio/Plug-Ins/VST3/MC2000_MC202.vst3",
              "/Library/Audio/Plug-Ins/VST3/MC2000_MC303.vst3",
              "/Library/Audio/Plug-Ins/VST3/MC2000_MC404.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/MC2000 MC202/",
    "/Library/Audio/Presets/McDSP/MC2000 MC303/",
    "/Library/Audio/Presets/McDSP/MC2000 MC404/",
    "~/Documents/Pro Tools/Plug-In Settings/MC202 Multi-Band/",
    "~/Documents/Pro Tools/Plug-In Settings/MC303 Multi-Band/",
    "~/Documents/Pro Tools/Plug-In Settings/MC404 Multi-Band/",
  ]
end
