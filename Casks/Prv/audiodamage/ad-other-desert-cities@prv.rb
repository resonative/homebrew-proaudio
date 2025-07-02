cask "ad-other-desert-cities@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "1.0.11"
  sha256 "d70285b81d6522ae40df62fcae3113e86aba0caea78b596b5ed7660b0acccde1"

  url "#{prv_archive_url}/a/ad-other-desert-cities/v#{version}/AD054_Other_Desert_Cities_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage Other Desert Cities"
  desc "Multi mode stereo delay"
  homepage "https://www.audiodamage.com/products/ad054-other-desert-cities"

  auto_updates false
  container nested: "AD054_Other_Desert_Cities_#{version}/macOS_Other_Desert_Cities_#{version}.zip"

  installer manual: "Other Desert Cities_Installer_v#{version}.app"

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Other Desert Cities.aaxplugin",
    "/Library/Audio/Plug-Ins/CLAP/Other Desert Cities.clap",
    "/Library/Audio/Plug-Ins/Components/Other Desert Cities.component",
    "/Library/Audio/Plug-Ins/VST3/Other Desert Cities.vst3",
  ]
end
