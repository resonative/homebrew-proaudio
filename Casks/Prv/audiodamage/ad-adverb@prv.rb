cask "ad-adverb@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.1.0"
  sha256 "091cb2d5d8c75180227d014c9f7a0069654041d9c358ab77c212fafb930c6f91"

  url "#{prv_archive_url}/a/ad-adverb/v#{version}/AD045_ADverb_#{version.no_dots}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage ADverb"
  desc "Vintage plate reverb"
  homepage "https://www.audiodamage.com/products/ad045-adverb2"

  auto_updates false

  pkg "AD045_ADverb_#{version.no_dots}/macOS_ADverb_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.adverb2*"
end
