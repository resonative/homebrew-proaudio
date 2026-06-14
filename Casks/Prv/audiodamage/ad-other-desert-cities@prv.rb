cask "ad-other-desert-cities@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.15"
  sha256 "b81a972a045ae7aa08f5d65b595ba8c30d5eccb0001f4070b3896a3fb6aaad11"

  url "#{prv_archive_url}/a/ad-other-desert-cities/v#{version}/macOS_Other_Desert_Cities_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Other Desert Cities"
  desc "Multi mode stereo delay"
  homepage "https://www.audiodamage.com/products/ad054-other-desert-cities"

  auto_updates false

  installer manual: "Other Desert Cities_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Other Desert Cities.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Other Desert Cities.clap",
    "/Library/Audio/Plug-Ins/Components/Other Desert Cities.component",
    "/Library/Audio/Plug-Ins/VST3/Other Desert Cities.vst3",
  ]
end
