cask "ad-eos@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.3.2"
  sha256 "c2e045de7d695346b7b3386ac045a87dea15c929cb2f65e78680bf29270cf9bf"

  url "#{Utils.prv_archive_url}/a/ad-eos/v#{version}/AD034_Eos_#{version}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage Eos"
  desc "Reverb"
  homepage "https://www.audiodamage.com/products/ad034-eos-2"

  auto_updates false
  container nested: "AD034_Eos_#{version}/macOS_Eos_#{version}.zip"

  installer manual: "Eos 2 Installer.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Eos 2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Eos 2.clap",
    "/Library/Audio/Plug-Ins/Components/Eos 2.component",
    "/Library/Audio/Plug-Ins/VST3/Eos 2.vst3",
  ]
end
