cask "rhizomatic-plasmonic@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.2.8,R1112"
  sha256 "cde3439434f256beb1cbe7ed1309aa8edf16785d2be49ee481f1d5fbeaea9561"

  url "#{prv_archive_url}/r/rhizomatic-plasmonic/v#{version.csv.first}/Plasmonic_#{version.csv.first}_#{version.csv.second}_macOS.zip",
      verified: prv_archive_url.to_s
  name "Rhizomatic Synestia"
  desc "MIDI and MPE controllable multi-fx with resonators"
  homepage "https://rhizomatic.fr"

  auto_updates false

  pkg "Plasmonic Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall pkgutil: "com.rhizomatic.plasmonic*"
end
