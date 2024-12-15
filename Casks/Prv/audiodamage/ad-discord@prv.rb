cask "ad-discord@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "4.1.0a,4.1.1"
  sha256 "4aeed557351d3a58d17b4682595b6633040d817ea4f1431e93f821e9954ac1a7"

  url "#{Utils.prv_archive_url}/a/ad-discord/v#{version.csv.first}/AD044_Discord_#{version.csv.first.no_dots}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage Discord"
  desc "Stereo pitch shifter"
  homepage "https://www.audiodamage.com/collections/software/products/ad044-discord4"

  auto_updates false

  pkg "AD044_Discord_#{version.csv.first.no_dots}/macOS_Discord_#{version.csv.second.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.discord4*"
end
