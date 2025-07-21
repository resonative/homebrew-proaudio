cask "ad-panstation@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.1.1"
  sha256 "d8be5c66f496c2a5caeefb28f1362065d8bd9ea461e1555b2917c787061859b7"

  url "#{prv_archive_url}/a/ad-panstation/v#{version}/AD052_Panstation_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Panstation"
  desc "Auto panner inspired by Drawmer M500"
  homepage "https://www.audiodamage.com/products/ad028-panstation"

  auto_updates false
  container nested: "AD052_Panstation_#{version}/macOS_Panstation2_v#{version}.zip"

  installer manual: "Panstation2_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Panstation2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Panstation2.clap",
    "/Library/Audio/Plug-Ins/Components/Panstation2.component",
    "/Library/Audio/Plug-Ins/VST3/Panstation2.vst3",
  ]
end
