cask "ad-kombinat-tri@prv3" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.1.1"
  sha256 "691cf8cf3e49446e72f19518c1627c1f13635f0e758ba518c0191c871cadc6ff"

  url "#{prv_archive_url}/a/ad-kombinat-tri/v#{version}/macOS_Kombinat_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Kombinat Tri (v3)"
  desc "Multiband distortion"
  homepage "https://www.audiodamage.com/products/ad037-kombinat-tri"

  auto_updates false

  installer manual: "Kombinat Tri Installer.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Kombinat Tri.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Kombinat Tri.clap",
    "/Library/Audio/Plug-Ins/Components/Kombinat Tri.component",
    "/Library/Audio/Plug-Ins/VST3/Kombinat Tri.vst3",
  ]
end
