cask "cableguys-halftime@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.1.12"
  sha256 "339dbcfafeffbfbb8591cb7a28fc2a37c391c23b34bb6128cf863ee2f14865b5"

  url "#{prv_archive_url}/c/cableguys-halftime/v#{version}/Cableguys-HalfTime-#{version}.zip",
      verified: prv_archive_url.to_s
  name "Cableguys HalfTime"
  desc "Realtime audio buffer time stretch"
  homepage "https://www.cableguys.com/snapback"

  auto_updates false

  pkg "Cableguys - HalfTime #{version}/Mac/Cableguys - HalfTime #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.halftime.*"

  zap delete: "~/Library/Preferences/de.cableguys.halftime.plist" # Contains license info
end
