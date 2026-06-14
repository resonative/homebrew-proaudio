cask "ad-eos@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.0"
  sha256 "f79225bf15b74a54a8ba754e38a53a8725345348163452a3bad0b01cf2314b46"

  url "#{prv_archive_url}/a/ad-eos/v#{version}/macOS_Eos2_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Eos"
  desc "Reverb"
  homepage "https://www.audiodamage.com/products/ad034-eos-2"

  auto_updates false

  installer manual: "Eos 2_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Eos 2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Eos 2.clap",
    "/Library/Audio/Plug-Ins/Components/Eos 2.component",
    "/Library/Audio/Plug-Ins/VST3/Eos 2.vst3",
  ]
end
