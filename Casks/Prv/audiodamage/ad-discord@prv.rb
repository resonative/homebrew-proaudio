cask "ad-discord@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "4.1.5"
  sha256 "8c517c601327d044864e5d9eaabbd7adc5938a5c25e52fe489b47005e98c7778"

  url "#{prv_archive_url}/a/ad-discord/v#{version.csv.first}/macOS_Discord4_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Discord"
  desc "Stereo pitch shifter"
  homepage "https://www.audiodamage.com/collections/software/products/ad044-discord4"

  auto_updates false

  installer manual: "Discord4_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Discord4.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Discord4.clap",
    "/Library/Audio/Plug-Ins/Components/Discord4.component",
    "/Library/Audio/Plug-Ins/VST3/Discord4.vst3",
  ]
end
