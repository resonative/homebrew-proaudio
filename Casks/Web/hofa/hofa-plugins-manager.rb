cask "hofa-plugins-manager" do
  version :latest
  sha256 :no_check

  url "https://download.hofa-shop.com/manager/installer-online/HOFA-Plugins_Manager.dmg",
      verified: "hofa-shop.com/"
  name "HOFA-Plugins Manager"
  desc "Online plugin manager for HOFA plugins"
  homepage "https://hofa-plugins.de/downloads/"

  app "HOFA-Plugins Manager.app"

  uninstall quit:   "com.hofa.HOFAPluginsManager",
            delete: [
              "~/Library/Caches/com.hofa.HOFAPluginsManager/",
              "~/Library/HTTPStorages/com.hofa.HOFAPluginsManager/",
              "~/Library/Saved Application State/com.hofa.HOFAPluginsManager.savedState/",
            ]

  zap trash: "~/Library/HOFA/HOFA-Plugins_Manager/"
end
