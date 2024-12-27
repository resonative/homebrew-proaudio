cask "renoise@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "3.4.4"
  sha256 :no_check

  url "#{Utils.prv_archive_url}/r/renoise/v#{version}/rns_#{version.no_dots}_osx.tar.gz"

  name "Renoise"
  desc "Tracker DAW"
  homepage "https://www.renoise.com"

  auto_updates false

  app "Renoise.app"
  artifact "Renoise.license", target: "~/Library/Preferences/Renoise/V#{version}/Renoise.license"

  uninstall quit:   "com.renoise.renoise",
            delete: [
              "~/Library/Caches/com.renoise.renoise/",
              "~/Library/HTTPStorages/com.renoise.renoise/",
              "~/Library/HTTPStorages/com.renoise.renoise.binarycookies",
              "~/Library/Saved Application State/com.renoise.renoise.savedState/",
            ],
            trash:  [
              "~/Library/Logs/Renoise.log",
              "~/Library/Logs/Renoise Plugin Server.log",
              "~/Library/Preferences/com.renoise.renoise.plist",
              "~/Library/Preferences/Renoise/",
              "~/Library/Preferences/Renoise Plugin Server/",
              # "~/Library/Application Support/Renoise/",
            ]
end
