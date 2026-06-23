cask "audija-kickdrum@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.8.6"
  sha256 "17f45ee7323fa75cf4348849ba51575b2cb78fa5feb2c1d9058f751d61667569"

  url "#{prv_archive_url}/a/audija-kickdrum/v#{version}/Audija%20KickDrum%20#{version}%20-%20Setup.pkg",
      verified: prv_archive_url.to_s
  name "Audija KickDrum"
  desc "Kick drum synthesizer"
  homepage "https://audija.com/plugins"

  auto_updates false

  pkg "Audija KickDrum #{version} - Setup.pkg"

  uninstall pkgutil: "com.Audija.pkg.AudijaKickDrum.*"
end
