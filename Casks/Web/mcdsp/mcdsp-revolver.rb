cask "mcdsp-revolver" do
  version "7.3.17"
  sha256 :no_check

  url "https://downloads.mcdsp.com/v7/NV/Mac/R_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP Revolver Convolution Reverb"
  desc "Stereo convultion reverb"
  homepage "https://mcdsp.com/plugin-index/revolver/"

  auto_updates false

  pkg "R_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.revolver_nv",
            delete:  [
              "/Applications/McDSP/Revolver_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Revolver_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Revolver_IR_Reader_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Revolver_Sweep_Anal_Native.aaxplugin",
              "/Library/Application Support/Avid/Audio/Plug-Ins/Revolver_Sweep_Gen_Native.aaxplugin",
              "/Library/Application\ Support/McDSP/Impulse_Responses",
              "/Library/Audio/Plug-Ins/Components/Revolver.component",
              "/Library/Audio/Plug-Ins/VST3/Revolver.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/Revolver/",
    "~/Documents/Pro Tools/Plug-In Settings/Revolver/",
  ]
end
