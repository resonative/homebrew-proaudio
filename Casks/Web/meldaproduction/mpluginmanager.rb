cask "mpluginmanager" do
  version "01.09"
  sha256 "75323e228d6fb6bfdd90dbe125fb0c8c4474877d71f6d4aa9fe97dae7cc20814"
  
  url "https://www.meldaproduction.com/downloads/down?name=MPluginManager_#{version.dots_to_underscores}_setupmac.zip&platform=mac&version=#{version}&mirror=bunnycdn&url=https%3A%2F%2Fmeldaproduction.b-cdn.net%2Fdownload%2FMPluginManager_#{version.dots_to_underscores}_setupmac.zip&checksum=fe51dadebcbede964a856f7310ff64582cdea027"

  name "MeldaProduction MPluginManager V17"
  desc "Plugin manager for Melda Production products"
  homepage "https://www.meldaproduction.com/downloads"

  auto_updates false

  pkg "MPluginManager_#{version.dots_to_underscores}_setupmac.pkg"

  uninstall quit:    "com.meldaproduction.MPluginManager",
            pkgutil: [
              "com.MeldaProduction.MPluginManager.pkg",
              "com.MeldaProduction.MPluginManagerData.pkg",
            ],
            delete: [
              "/Applications/MeldaProduction/MPluginManager.app",
              "~/Library/Saved Application State/com.meldaproduction.MPluginManager.savedState/",
            ]

  caveats "brew uninstall cannot uninstall/delete everything installed by this app."
end
