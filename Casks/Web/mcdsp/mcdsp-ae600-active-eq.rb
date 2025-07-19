cask "mcdsp-ae600-active-eq" do
  version "7.2.35"
  sha256 "0e7c7d66e021d36cca2aec6c3b65cbc66b5fc5b893a141285963a01f8f135afc"

  url "https://downloads.mcdsp.com/v7/NV/Mac/AE600_NV_Install_#{version.dots_to_underscores}_MAC.zip"
  name "McDSP AE600 Active EQ"
  desc "6-Band dynamic EQ"
  homepage "https://mcdsp.com/plugin-index/ae600/"

  auto_updates false

  pkg "AE600_NV_Install_#{version.dots_to_underscores}_MAC.pkg"

  uninstall pkgutil: "com.mcdsp.ae600activeeq_nv",
            delete:  [
              "/Applications/McDSP/AE600_Active_EQ_Native/",
              "/Library/Application Support/Avid/Audio/Plug-Ins/AE600_Active_EQ_Native.aaxplugin",
              "/Library/Audio/Plug-Ins/Components/AE600_Active_EQ.component",
              "/Library/Audio/Plug-Ins/VST3/AE600_Active_EQ.vst3",
            ]

  zap delete: [
    "/Library/Audio/Presets/McDSP/AE600 Active EQ/",
    "~/Documents/Pro Tools/Plug-In Settings/AE600 Active EQ/",
  ]
end
