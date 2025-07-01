cask "kvr-studio-manager" do
  version "0.2.2.0"
  sha256 "b7acab568ce29ff99d698bfdb1dfa2e155099f0950be0d4f87d6d209ea8f39ec"
  
  url "https://static.kvraudio.com/files/175/kvr-studio-manager-#{version.dots_to_hyphens}.dmg",
      referer: "https://www.kvraudio.com/kvr-studio-manager",
      user_agent: :fake
  name "KVR Studio Manager"
  desc "Audio plugins manage utility"
  homepage "https://www.kvraudio.com/kvr-studio-manager"

  app "KVR Studio Manager.app"

  uninstall quit: "com.kvraudio.KVRStudioManager",
            delete: [
              "~/Library/Caches/com.kvraudio.KVRStudioManager/",
              "~/Library/HTTPStorages/com.kvraudio.KVRStudioManager/",
              "~/Library/HTTPStorages/com.kvraudio.KVRStudioManager.binarycookies",
              "~/Library/KVR Studio Manager/",
              "~/Library/WebKit/com.kvraudio.KVRStudioManager/"
            ]

  zap trash: [
    "~/Library/Logs/KVR Studio Manager/",
    "~/Library/Preferences/KVR Studio Manager.settings",
  ]
end
