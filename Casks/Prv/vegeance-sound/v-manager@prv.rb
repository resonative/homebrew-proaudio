cask "v-manager@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch('HOMEBREW_PREFIX')}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "1.4.7"
  sha256 :no_check
  
  url "#{Utils.prv_archive_url}/v/v-manager/v#{version}/V-Manager_mac.zip",
      verified: "#{Utils.prv_archive_url}/"
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
