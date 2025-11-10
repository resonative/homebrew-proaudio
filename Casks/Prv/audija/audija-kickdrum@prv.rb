cask "audija-kickdrum@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.6.0"
  sha256 "5c4de00ae890b392bf30cc61c8c815f97aab985201c7da26c38999b1031beed8"

  url "#{prv_archive_url}/a/audija-kickdrum/v#{version}/Audija%20KickDrum%20#{version}%20-%20Setup.pkg",
      verified: prv_archive_url.to_s
  name "Audija KickDrum"
  desc "Kick drum synthesizer"
  homepage "https://audija.com/plugins"

  auto_updates false

  pkg "Audija KickDrum #{version} - Setup.pkg"

  uninstall pkgutil: "com.Audija.pkg.AudijaKickDrum.*"
end
