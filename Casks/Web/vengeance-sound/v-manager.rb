cask "v-manager" do
  version "1.4.7"
  sha256 :no_check
  
  url "https://keilwerth-audio-data-2.com/files/release/vman/#{version}/V-Manager_mac.zip"
  name "V-Manager"
  desc "Activation manager and expansion downloader for VPS Avenger"
  homepage "https://www.vps-avenger.com/"

  auto_updates true

  app "V-Manager.app"

  uninstall quit:   "com.keilwerthAudio_VengeanceSound.VManager",
            delete: [
              "~/Library/Caches/com.keilwerthAudio_VengeanceSound.VManager/",
              "~/Library/HTTPStorages/com.keilwerthAudio_VengeanceSound.VManager/",
            ]

  zap trash: "~/Library/Preferences/com.keilwerthAudio_VengeanceSound.VManager.plist"
end
