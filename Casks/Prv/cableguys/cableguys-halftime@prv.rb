cask "cableguys-halftime@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "1.1.10"
  sha256 "d859bc37b14b28515e1277efa7c64afea9cd144c34f9d18e4a56850eeffa6b67"

  url "#{Utils.prv_archive_url}/c/cableguys-halftime/v#{version}/Cableguys-HalfTime.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Cableguys HalfTime"
  desc "Realtime audio buffer time stretch"
  homepage "https://www.cableguys.com/snapback"

  auto_updates false

  pkg "Cableguys - HalfTime #{version}/Mac/Cableguys - HalfTime #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.halftime.*"

  zap delete: "~/Library/Preferences/de.cableguys.halftime.plist" # Contains license info
end
