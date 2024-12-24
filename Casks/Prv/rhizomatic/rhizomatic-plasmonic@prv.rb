cask "rhizomatic-plasmonic@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "1.2.7,R1088"
  sha256 "cebb15442fef2dd59e395bebacfcbfb431a71007344c9f1aa85e0928ccae1e06"

  url "#{Utils.prv_archive_url}/r/rhizomatic-plasmonic/v#{version.csv.first}/Plasmonic_#{version.csv.first}_#{version.csv.second}_macOS.zip"

  name "Rhizomatic Synestia"
  desc "MIDI and MPE controllable multi-fx with resonators"
  homepage "https://rhizomatic.fr"

  auto_updates false

  pkg "Plasmonic Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall pkgutil: "com.rhizomatic.plasmonic*"
end
