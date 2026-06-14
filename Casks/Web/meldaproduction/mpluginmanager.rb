cask "mpluginmanager" do
  version "02.25"
  sha256 "e1f177c3d307aa099a012f4211dafd219fd07da0bf1e20d2201424ede2dd6f83"

  url "https://meldaproduction.b-cdn.net/download/mpluginmanager/MPluginManager_#{version.dots_to_underscores}_setupmac.zip"
  name "MeldaProduction MPluginManager V17"
  desc "Plugin manager for Melda Production products"
  homepage "https://www.meldaproduction.com/downloads"

  auto_updates false

  pkg "MPluginManager_#{version.dots_to_underscores}_setupmac.pkg"

  postflight do
    system_command "sleep",
                   args: ["2"],
                   sudo: false
    system_command "pkill",
                   args: ["-x", "MPluginManager.bin"],
                   sudo: false
  end
  uninstall_postflight do
    puts "\e[31;1m==>\e[0m \e[1mIf no MeldaProduction plugins are installed, remove below folders manually:\e[0m"
    puts "\e[36m/Library/Application Support/MeldaProduction/\e[0m\n" \
         "\e[36m~/Library/Application Support/MeldaProduction/\e[0m"
  end

  uninstall quit:    "com.meldaproduction.MPluginManager",
            pkgutil: [
              "com.MeldaProduction.MPluginManager.pkg",
              "com.MeldaProduction.MPluginManagerData.pkg",
            ],
            delete: [
              "/Applications/MeldaProduction/MPluginManager.app",
              "~/Library/Saved Application State/com.meldaproduction.MPluginManager.savedState/",
            ]

  zap trash: "~/Library/Application Support/MeldaProduction/Downloader/"
end
