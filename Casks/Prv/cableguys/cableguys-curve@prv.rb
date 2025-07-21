cask "cableguys-curve@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.6.3"
  sha256 "8a01d089de3919e46771a408048d7d328e972737f1dd88f15e055ae614e36493"

  url "#{prv_archive_url}/c/cableguys-curve/v#{version}/Cableguys-Curve#{version.major}.zip",
      verified: prv_archive_url.to_s
  name "Cableguys HalfTime"
  desc "Realtime audio buffer time stretch"
  homepage "https://www.cableguys.com/snapback"

  auto_updates false

  pkg "Cableguys - Curve #{version}/Mac/Cableguys - Curve #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.curve2.*"

  zap delete: [
    "~/Library/Cableguys/Curve/",
    "~/Library/Preferences/de.cableguys.curve2.plist", # Contains license info
  ]
end
