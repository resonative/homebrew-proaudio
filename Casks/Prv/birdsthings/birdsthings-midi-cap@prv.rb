cask "birdsthings-midi-cap@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end
  version "1.0.5"
  sha256 :no_check

  url "#{Utils.prv_archive_url}/b/birdsthings-midi-cap/v0.5.5/leAWCvlBQRSF3aTxNxOZ_MIDI%20Cap.zip"

  name "Bird's Things MIDI Cap"
  desc "Always-on MIDI recorder"
  homepage "https://www.birdsthings.com/midi-cap"

  auto_updates false

  pkg "macOS/MIDI Cap Installer.pkg"

  uninstall pkgutil: "com.birdbird.midicap.pkg.*"
end
