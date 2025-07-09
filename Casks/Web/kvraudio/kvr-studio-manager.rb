cask "kvr-studio-manager" do
  version "0.3.0.0"
  sha256 "50d446ce2db8361c74ac97ec80481fdb8a20e6ec1dc5b5d03e078ce67623c2ac"

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
