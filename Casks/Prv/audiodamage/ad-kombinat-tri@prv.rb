cask "ad-kombinat-tri@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.1.1"
  sha256 "6fde92a6bf85f238270470fc97860a26192b071e17ee26bae40ce2fb35cd15e0"

  url "#{prv_archive_url}/a/ad-kombinat-tri/v#{version}/AD037_Kombinat_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Kombinat Tri"
  desc "Multiband distortion"
  homepage "https://www.audiodamage.com/products/ad037-kombinat-tri"

  auto_updates false
  container nested: "AD037_Kombinat_#{version}/macOS_Kombinat_#{version}.zip"

  installer manual: "Kombinat Tri Installer.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Kombinat Tri.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Kombinat Tri.clap",
    "/Library/Audio/Plug-Ins/Components/Kombinat Tri.component",
    "/Library/Audio/Plug-Ins/VST3/Kombinat Tri.vst3",
  ]
end
