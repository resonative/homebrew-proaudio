cask "v-manager@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "1.4.7"
  sha256 "ce7c712b74455bbfb8fc357887ca460c42c89f4b4b7c6d5976ae2d907398ddb7"

  url "#{prv_archive_url}/v/v-manager/v#{version}/V-Manager_mac.zip",
      verified: prv_archive_url.to_s
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
