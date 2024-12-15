cask "ad-filterstation@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.1.1"
  sha256 "435f695a172e5216a1b5b58fcb3e59f17ed056ed44358975984cd9610d32d1c0"

  url "#{Utils.prv_archive_url}/a/ad-filterstation/v#{version}/AD043_Filterstation_#{version.no_dots}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage Filterstation"
  desc "Dual multi-mode filter"
  homepage "https://www.audiodamage.com/products/ad043-filterstation2"

  auto_updates false

  pkg "AD043_Filterstation_#{version.no_dots}/macOS_Filterstation_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.Filterstation2*"
end
