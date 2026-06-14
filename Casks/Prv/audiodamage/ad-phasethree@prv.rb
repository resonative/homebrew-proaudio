cask "ad-phasethree@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.1.0"
  sha256 "70862d7e685b8ba1e088b13f0229712b851b9c0f4e9ad2f5bb674bf6fdfb11af"

  url "#{prv_archive_url}/a/ad-phasethree/v#{version}/macOS_Phase_3_#{version}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage PhaseThree"
  desc "Mu-tron bi-phase emulation"
  homepage "https://www.audiodamage.com/products/ad048-phasethree"

  auto_updates false

  pkg "macOS_PhaseThree_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.phasethree*"
end
