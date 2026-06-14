cask "ad-replicant@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.1.1"
  sha256 "b2edae163d7ce62f0a78cf2855ef3ff21ee6bc47f9e03c6ff4774b96f2850612"

  url "#{prv_archive_url}/a/ad-replicant/v#{version}/macOS_Replicant_3_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Replicant"
  desc "Tempo synced audio buffer sutter slicing effect"
  homepage "https://www.audiodamage.com/products/ad056-replicant-3"

  auto_updates false

  installer manual: "Replicant 3_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Replicant 3.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Replicant 3.clap",
    "/Library/Audio/Plug-Ins/Components/Replicant 3.component",
    "/Library/Audio/Plug-Ins/VST3/Replicant 3.vst3",
  ]
end
