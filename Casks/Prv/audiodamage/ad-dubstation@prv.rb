cask "ad-dubstation@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.3.0a,2.3.1"
  sha256 "eb52278fa265ee932c9e7ccc13f06e13476ebd50b1159942def2a5b9c8471b42"

  url "#{Utils.prv_archive_url}/a/ad-dubstation/v#{version.csv.first}/AD036_Dubstation_#{version.csv.first}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage Dubstation"
  desc "BBD delay"
  homepage "https://www.audiodamage.com/products/ad036-dubstation-2"

  auto_updates false
  container nested: "AD036_Dubstation_2.3.0/macOS_Dubstation_2_#{version.csv.second}.zip"

  installer manual: "Dubstation 2_Installer_v#{version.csv.second}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Dubstation2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Dubstation 2.clap",
    "/Library/Audio/Plug-Ins/Components/Dubstation 2.component",
    "/Library/Audio/Plug-Ins/VST3/Dubstation 2.vst3",
  ]
end
