cask "ad-filterstation@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.2.0"
  sha256 "ce8de6949c980a0bc73265df1962db719d7be89d6055afd4c9f8a742ed887d5a"

  url "#{prv_archive_url}/a/ad-filterstation/v#{version}/macOS_Filterstation2_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Filterstation"
  desc "Dual multi-mode filter"
  homepage "https://www.audiodamage.com/products/ad043-filterstation2"

  auto_updates false

  installer manual: "Filterstation2_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Filterstation2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Filterstation2.clap",
    "/Library/Audio/Plug-Ins/Components/Filterstation2.component",
    "/Library/Audio/Plug-Ins/VST3/Filterstation2.vst3",
  ]
end
