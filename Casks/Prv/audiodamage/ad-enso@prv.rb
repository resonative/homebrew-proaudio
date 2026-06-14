cask "ad-enso@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.3.3"
  sha256 "1b22044731116454bcda7dd11b23054bd099738bce14f399c8289a1d9dc483c6"

  url "#{prv_archive_url}/a/ad-enso/v#{version}/macOS_Enso_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Enso"
  desc "Looper"
  homepage "https://www.audiodamage.com/products/ad049-enso"

  auto_updates false

  installer manual: "Enso_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Enso.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Enso.clap",
    "/Library/Audio/Plug-Ins/Components/Enso.component",
    "/Library/Audio/Plug-Ins/VST3/Enso.vst3",
  ]
end
