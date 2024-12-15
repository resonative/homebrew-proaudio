cask "ad-adverb@prv" do
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
  sha256 "091cb2d5d8c75180227d014c9f7a0069654041d9c358ab77c212fafb930c6f91"

  url "#{Utils.prv_archive_url}/a/ad-adverb/v#{version}/AD045_ADverb_#{version.no_dots}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage ADverb"
  desc "Vintage plate reverb"
  homepage "https://www.audiodamage.com/products/ad045-adverb2"

  auto_updates false

  pkg "AD045_ADverb_#{version.no_dots}/macOS_ADverb_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.adverb2*"
end
