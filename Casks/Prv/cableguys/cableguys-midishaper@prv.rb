cask "cableguys-midishaper@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.6.3"
  sha256 "cba29cb86f5b7ce7c8b40b69458a9e51d6d94b3442a3a486f010376df5fc1131"

  url "#{prv_archive_url}/c/cableguys-midishaper/v#{version}/Cableguys-MidiShaper-#{version}.zip",
      verified: prv_archive_url.to_s
  name "Cableguys MidiShaper"
  desc "Tempo-synced midi LFO and envelopes"
  homepage "https://www.cableguys.com/snapback"

  auto_updates false

  pkg "Cableguys - MidiShaper #{version}/Mac/Cableguys - MidiShaper #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.midishaper.*"

  zap delete: "~/Library/Preferences/de.cableguys.midishpaer.plist" # Contains license info
end
