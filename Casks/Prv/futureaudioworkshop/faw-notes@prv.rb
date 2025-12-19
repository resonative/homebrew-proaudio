cask "faw-notes@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.1,161225"
  sha256 "71e5951a96050563b5a7d48a63c9566cb4b6a85e8ad6c5c3ff421e228153b38e"

  url "#{prv_archive_url}/f/faw-notes/v#{version}/Notes-Installer-#{version.csv.first}-#{version.csv.second}-macOS.dmg",
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
