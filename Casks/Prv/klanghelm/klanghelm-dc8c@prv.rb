cask "klanghelm-dc8c@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "3.5.2"
  sha256 "b7d1861caa0c363ac49dd1e56509c502de22583dba02b03acea46b45bc834e69"

  url "#{Utils.prv_archive_url}/k/klanghelm-dc8c/v#{version}/DC8C#{version.major}-mac-installer.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Klanghelm DC8C"
  desc "Multi style compressor"
  homepage "https://klanghelm.com/contents/products/DC8C"

  auto_updates false
  container nested: "DC8C#{version.major}.dmg"

  pkg "DC8C#{version.major}-installer.pkg"

  uninstall pkgutil: "com.dc8c3.pkg.*"
end
