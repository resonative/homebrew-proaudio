cask "ad-discord@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "4.1.5"
  sha256 "ddd379f37fe4d2bc9021417f8324a743faadaae5c4bc3b81320c3e86ed22e52d"

  url "#{prv_archive_url}/a/ad-discord/v#{version.csv.first}/AD044_Discord_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Discord"
  desc "Stereo pitch shifter"
  homepage "https://www.audiodamage.com/collections/software/products/ad044-discord4"

  auto_updates false
  container nested: "AD044_Discord_#{version}/macOS_Discord4_#{version}.zip"

  installer manual: "Discord4_Installer_v4.1.5.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Discord4.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Discord4.clap",
    "/Library/Audio/Plug-Ins/Components/Discord4.component",
    "/Library/Audio/Plug-Ins/VST3/Discord4.vst3",
  ]
end
