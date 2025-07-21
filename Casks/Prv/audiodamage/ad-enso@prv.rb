cask "ad-enso@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.3.3"
  sha256 "6673f8d17164134105abb3e18f0ecbce41c9677f36ff3ce1f404ea7c410bf035"

  url "#{prv_archive_url}/a/ad-enso/v#{version}/AD049_Enso_#{version}.zip",
      verified: prv_archive_url.to_s
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
