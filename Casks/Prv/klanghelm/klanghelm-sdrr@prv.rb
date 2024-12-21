cask "klanghelm-sdrr@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.5.0"
  sha256 "4304b74c2f3bdae074d8cf99cbdbad757eeb801e2842f859b311c1fa1a646b72"

  url "#{Utils.prv_archive_url}/k/klanghelm-sdrr/v#{version}/SDRR#{version.major}-mac-installer.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Klanghelm SDRR"
  desc "Saturation"
  homepage "https://klanghelm.com/contents/products/SDRR"

  auto_updates false
  container nested: "SDRR#{version.major}.dmg"

  pkg "SDRR#{version.major}-installer.pkg"

  uninstall pkgutil: "com.SDRR2.pkg.*"
end
