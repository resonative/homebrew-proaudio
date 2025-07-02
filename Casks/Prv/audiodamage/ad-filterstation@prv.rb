cask "ad-filterstation@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.2.0"
  sha256 "7fd380b87d16c4f8308d7a685ee1b338a4ce1d2ff31ceb537858336ef6ae21e1"

  url "#{prv_archive_url}/a/ad-filterstation/v#{version}/AD043_Filterstation_#{version.no_dots}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Filterstation"
  desc "Dual multi-mode filter"
  homepage "https://www.audiodamage.com/products/ad043-filterstation2"

  auto_updates false
  container nested: "AD034_Filterstation_#{version}/macOS_Filterstation2_#{version}.zip"

  installer manual: "Filterstation2_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Filterstation2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Filterstation2.clap",
    "/Library/Audio/Plug-Ins/Components/Filterstation2.component",
    "/Library/Audio/Plug-Ins/VST3/Filterstation2.vst3",
  ]
end
