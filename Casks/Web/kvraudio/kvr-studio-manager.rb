cask "kvr-studio-manager" do
  version "0.3.0.1"
  sha256 "a8b8b932f2f4ed02709a65a88e198173db79dc49e419a3b35e358c2935b577c8"

  url "https://static.kvraudio.com/files/175/kvr-studio-manager-#{version.dots_to_hyphens}.dmg",
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

  caveats "Does not download (403 error), to be moved to Prv"
end
