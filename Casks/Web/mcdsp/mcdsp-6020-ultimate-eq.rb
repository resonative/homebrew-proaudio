cask "mcdsp-6020-ultimate-eq" do
  version "7.3.0"
  sha256 "0b053fd5b5444befbbd35f7f9e515d0f28325afedb6f07c9344ddf61619023fa"

  url "https://downloads.mcdsp.com/v7/NV/Mac/6020_E_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP 6020 Ultimate EQ"
  desc "10 different models of EQ emulations"
  homepage "https://mcdsp.com/plugin-index/6020-ultimate/"

  auto_updates false

  pkg "6020_E_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ultimateeq_nv",
            delete:  [
              "/Applications/McDSP/6020_Ultimate_EQ_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/6020_Ultimate_EQ_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/6020_Ultimate_EQ.component",
              "/Library/Audio/Plug-Ins/VST3/6020_Ultimate_EQ.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/6020 Ultimate EQ/",
    "~/Documents/Pro Tools/Plug-In Settings/6020 Ultimate EQ/",
  ]
end
