cask "ad-panstation@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.1.1"
  sha256 :no_check

  url "#{Utils.prv_archive_url}/a/ad-panstation/v#{version}/AD052_Panstation_#{version}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage Panstation"
  desc "Auto panner inspired by Drawmer M500"
  homepage "https://www.audiodamage.com/products/ad028-panstation"

  auto_updates false
  container nested: "AD052_Panstation_#{version}/macOS_Panstation2_v#{version}.zip"

  installer manual: "Panstation2_Installer_v2.1.1.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Panstation2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Panstation2.clap",
    "/Library/Audio/Plug-Ins/Components/Panstation2.component",
    "/Library/Audio/Plug-Ins/VST3/Panstation2.vst3",
  ]
end
