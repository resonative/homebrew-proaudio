cask "ad-enso@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "1.3.2"
  sha256 "1b2ba6d372abc532d1576c4241ec0856385be65e04cecefc61de7dcddcb87b8c"

  url "#{Utils.prv_archive_url}/a/ad-enso/v#{version}/AD049_Enso_#{version}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage Enso"
  desc "Looper"
  homepage "https://www.audiodamage.com/products/ad049-enso"

  auto_updates false
  container nested: "AD049_Enso_#{version}/macOS_Enso_#{version}.zip"

  installer manual: "Enso_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Enso.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Enso.clap",
    "/Library/Audio/Plug-Ins/Components/Enso.component",
    "/Library/Audio/Plug-Ins/VST3/Enso.vst3",
  ]
end
