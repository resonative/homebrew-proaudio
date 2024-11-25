cask "pa-installation-manager" do
  version "1.2.4"
  sha256 "28e0b781e4cf08dacc0d2cb2719dcf26c0171a900b5d61cbee8d16a57f86d648"

  url "https://files.plugin-alliance.com/products/installer/pa_installation_manager_mac_#{version.dots_to_underscores}.zip"
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
