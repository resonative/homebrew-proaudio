cask "ad-ratshack-reverb@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.2.1"
  sha256 "6d87e2de477a4d9ce9db71771e305ccb3b6499d040d9c16da730f6459a15e072"

  url "#{prv_archive_url}/a/ad-ratshack-reverb/v#{version}/macOS_RatshackReverb3_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Ratshack Reverb"
  desc "Realistic Electronic Reverb emulation"
  homepage "https://www.audiodamage.com/products/ad002-ratshack-reverb"

  auto_updates false

  installer manual: "RatshackReverb3_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/RatshackReverb3.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/RatshackReverb3.clap",
    "/Library/Audio/Plug-Ins/Components/RatshackReverb3.component",
    "/Library/Audio/Plug-Ins/VST3/RatshackReverb3.vst3",
  ]
end
