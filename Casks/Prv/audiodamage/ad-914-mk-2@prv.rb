cask "ad-914-mk-2@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.1.0"
  sha256 "b8742724a5afba2bee8496c08e454456af3328b340b92521568b40c336187f5a"

  url "#{Utils.prv_archive_url}/a/ad-914-mk-2/v#{version}/AD041_914_#{version.no_dots}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage 914 Mk 2 Fixed Filter Bank"
  desc "Moog Modular Synthesizer 914 module emulation"
  homepage "https://www.audiodamage.com/products/ad041-914-mk-2-fixed-filter-bank"

  auto_updates false

  pkg "AD041_914_#{version.no_dots}/macOS_914_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.filter914*"
end
