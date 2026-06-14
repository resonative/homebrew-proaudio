cask "ad-adverb@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.1.0"
  sha256 "7aa6d7854dcda892e266e360d770d59c82f05a8c7432df37da034757a830fad8"

  url "#{prv_archive_url}/a/ad-adverb/v#{version}/macOS_Adverb_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage ADverb"
  desc "Vintage plate reverb"
  homepage "https://www.audiodamage.com/products/ad045-adverb2"

  auto_updates false

  pkg "macOS_ADverb_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.adverb2*"
end
