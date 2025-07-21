cask "rhizomatic-synestia@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.0,R0288"
  sha256 "86ecd3cb6735782417b75aa396fc111c8728942d29541488b84e33e99cc9dd2e"

  url "#{prv_archive_url}/r/rhizomatic-synestia/v#{version.csv.first}/Synestia_#{version.csv.first}_macOS.zip",
      verified: prv_archive_url.to_s
  name "Rhizomatic Synestia"
  desc "MIDI and MPE controllable multi-fx with resonators"
  homepage "https://rhizomatic.fr"

  auto_updates false

  pkg "Synestia Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall pkgutil: "com.rhizomatic.synestiaFX*"

  zap delete: "~/Music/Rhizomatic/Synestia/Settings/Synestia.settings"
end
