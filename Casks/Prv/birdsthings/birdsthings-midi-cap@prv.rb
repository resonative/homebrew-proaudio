cask "birdsthings-midi-cap@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "0.5.5"
  sha256 "5c8f21684a4c8193d113edac5a11cf508eddba9d69c364036d5d10facdd12be1"

  url "#{prv_archive_url}/b/birdsthings-midi-cap/#{version}/leAWCvlBQRSF3aTxNxOZ_MIDI%20Cap.zip",
      verified: prv_archive_url.to_s  

  name "Bird's Things MIDI Cap"
  desc "Always-on MIDI recorder"
  homepage "https://www.birdsthings.com/midi-cap"

  auto_updates false

  pkg "macOS/MIDI Cap Installer.pkg"

  uninstall pkgutil: "com.birdbird.midicap.pkg.*"
end
