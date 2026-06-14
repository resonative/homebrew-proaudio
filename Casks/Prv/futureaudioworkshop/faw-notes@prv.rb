cask "faw-notes@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.4,170426"
  sha256 "db4b6c96d4a551d107ec6709e3c136b37fa74e5a2eb85f409e16ee63658e5a5a"

  url "#{prv_archive_url}/f/faw-notes/v#{version.csv.first}/Notes-Installer-#{version.csv.first}-#{version.csv.second}-macOS.dmg",
      verified: prv_archive_url.to_s
  name "Future Audio Workshop Notes"
  desc "Chord sequencer"
  homepage "https://futureaudioworkshop.com/"

  auto_updates false

  pkg "Notes.pkg"

  uninstall pkgutil: [
    "com.futureaudioworkshop.pkg.FAWNotes",
    "com.futureaudioworkshop.pkg.Notes*"
  ]
end
