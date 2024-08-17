cask "kvr-studio-manager" do
  version "0.1.9.3"
  sha256 "dfba80e6286e0a668c263dee836de1dabf248a6e3a5f1d0412bda57920aeab39"

  url "https://static.kvraudio.com/files/175/kvr-studio-manager-#{version.dots_to_hyphens}.dmg"
  name "KVR Studio Manager"
  desc "Audio Plugins Manager"
  homepage "https://www.kvraudio.com/kvr-studio-manager#jumpto_ksm-downloads"

  livecheck do
    cask "kvr-studio-manager"
  end

  auto_updates false
  depends_on macos: ">= :mojave"

  app "KVR Studio Manager.app"

  uninstall quit:   "com.kvraudio.KVRStudioManager",
            delete: [
              "~/Library/Caches/com.kvraudio.KVRStudioManager/",
              "~/Library/HTTPStorages/com.kvraudio.KVRStudioManager/",
              "~/Library/WebKit/com.kvraudio.KVRStudioManager/",
            ]

  zap trash: [
    "~/Library/HTTPStorages/com.kvraudio.KVRStudioManager.binarycookies",
    "~/Library/KVR Studio Manager/",
    "~/Library/Logs/KVR Studio Manager/",
    "~/Library/Preferences/KVR Studio Manager.settings",
  ]
end
