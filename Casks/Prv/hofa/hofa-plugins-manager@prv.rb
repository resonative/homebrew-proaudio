cask "hofa-plugins-manager@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version :latest
  sha256 :no_check

  url "#{prv_archive_url}/h/hofa-plugins-manager/latest/HOFA-Plugins_Manager.dmg",
      verified: prv_archive_url.to_s
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
