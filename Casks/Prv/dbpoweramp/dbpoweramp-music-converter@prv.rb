cask "dbpoweramp-music-converter@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2025-07-14"
  sha256 :no_check

  # Remove unique identifier from filename; Typically download as dBRefMusic-2025-07-14==**######=********.dmg
  url "#{prv_archive_url}/d/dbpoweramp-music-converter/v#{version}/dBRefMusic-2025-07-14.dmg",
      verified: prv_archive_url.to_s
  name "dBpoweramp Music Converter"
  desc "Audio file converter and CD ripper utility"
  homepage "https://www.dbpoweramp.com/dmc.htm"

  app "dBpoweramp CD Ripper.app"
  app "dBpoweramp Music Converter.app"

  uninstall quit: [
    "com.Illustrate.dBpoweramp-CD-Ripper",
    "com.Illustrate.dBpoweramp-Music-Converter",
  ]

  zap delete: [
    "~/Library/Preferences/com.Illustrate.dBpoweramp-CD-Ripper.plist",
    "~/Library/Preferences/com.Illustrate.dBpoweramp-Music-Converter.plist",
  ]
end
