cask "pa-installation-manager" do
  version "1.4.0"
  sha256 "524b79d03170653d28e835cb4d6ec2ee20a0123c0f6f9d73194cec5fd39189b8"

  url "https://pluginalliance.myshopify.com/cdn/shop/files/pa_installation_manager_mac_#{version.dots_to_underscores}.zip"
  name "Plugin Alliance Installation Manager"
  desc "Installation manager for Plugin Alliance products"
  homepage "https://www.plugin-alliance.com/en/installation-manager.html"

  app "PA-InstallationManager.app"

  uninstall launchctl: "com.plugin-alliance.pa-installationhelper",
            quit:      "com.plugin-alliance.plugins.PAInstallationManager",
            delete:    [
              "/Library/PrivilegedHelperTools/com.plugin-alliance.pa-installationhelper",
              "~/Library/Caches/com.plugin-alliance.plugins.PAInstallationManager/",
            ]

  zap delete: [
    "~/Library/HTTPStorages/com.plugin-alliance.plugins.PAInstallationManager",
    "~/Library/HTTPStorages/com.plugin-alliance.plugins.PAInstallationManager.binarycookies",
  ]
end
