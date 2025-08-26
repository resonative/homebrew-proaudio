cask "audija-kickdrum@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.1"
  sha256 "987fa3c4c46b9205c10959f52118b537083ff37668611833db22053176bb3bf9"

  url "#{prv_archive_url}/a/audija-kickdrum/v#{version}/Audija%20KickDrum%20#{version}%20-%20Setup.pkg",
      verified: prv_archive_url.to_s
  name "Audija KickDrum"
  desc "Kick drum synthesizer"
  homepage "https://audija.com/plugins"

  auto_updates false

  pkg "Audija KickDrum #{version} - Setup.pkg"

  uninstall pkgutil: "com.Audija.pkg.AudijaKickDrum.*"
end
