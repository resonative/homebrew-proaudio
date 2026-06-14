cask "ad-dubstation@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.4.3"
  sha256 "aa9cec4f0ee352561972bd7d494af8e62e9873bef930cd7103108ea29e1a6ddd"

  url "#{prv_archive_url}/a/ad-dubstation/v#{version}/macOS_Dubstation_2_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Dubstation"
  desc "BBD delay"
  homepage "https://www.audiodamage.com/products/ad036-dubstation-2"

  auto_updates false

  installer manual: "Dubstation 2_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Dubstation2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Dubstation 2.clap",
    "/Library/Audio/Plug-Ins/Components/Dubstation 2.component",
    "/Library/Audio/Plug-Ins/VST3/Dubstation 2.vst3",
  ]
end
