cask "cableguys-curve@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.6.3"
  sha256 "8a01d089de3919e46771a408048d7d328e972737f1dd88f15e055ae614e36493"

  url "#{Utils.prv_archive_url}/c/cableguys-curve/v#{version}/Cableguys-Curve#{version.major}.zip",
      verified: Utils.prv_archive_url("verified").to_s
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
