cask "ad-eos@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.4.0"
  sha256 "30e08551f3835c4c01b585eaddc0cb1f0e5a696f8cfd884dea4fa1409ea32287"

  url "#{prv_archive_url}/a/ad-eos/v#{version}/AD034_Eos_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Eos"
  desc "Reverb"
  homepage "https://www.audiodamage.com/products/ad034-eos-2"

  auto_updates false
  container nested: "AD034_Eos_#{version}/macOS_Eos_#{version}.zip"

  installer manual: "Eos 2_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Eos 2.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Eos 2.clap",
    "/Library/Audio/Plug-Ins/Components/Eos 2.component",
    "/Library/Audio/Plug-Ins/VST3/Eos 2.vst3",
  ]
end
