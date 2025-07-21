cask "ad-phasethree@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.1.0"
  sha256 "8f5cd1e68ea999a095c5ed51f3e3e4fc6ba0ce7aa0831f75aa07cb4e0035ab8e"

  url "#{prv_archive_url}/a/ad-phasethree/v#{version}/AD048_PhaseThree_#{version.no_dots}.zip",
      verified: prv_archive_url.to_s
  name "Audio Damage PhaseThree"
  desc "Mu-tron bi-phase emulation"
  homepage "https://www.audiodamage.com/products/ad048-phasethree"

  auto_updates false

  pkg "AD048_PhaseThree_#{version.no_dots}/macOS_PhaseThree_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.phasethree*"
end
