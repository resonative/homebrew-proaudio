cask "wavealchemy-triaz@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "1.1.2"
  sha256 "a8e6b76d170ef7e260cc0aa7d02f55690f5c6b61c0cac3766b03b72efd881b73"

  url "#{prv_archive_url}/w/wavealchemy-triaz/v#{version}/Triaz_macOS.zip",
      verified: prv_archive_url.to_s
  name "Wave Alchemy Triaz"
  desc "Drum Machine instrument"
  homepage "https://www.wavealchemy.co.uk/product/triaz/"

  auto_updates false

  pkg "Triaz_macOS/Triaz Plugin Installer/Triaz Plugin Installer #{version}.pkg"

  postflight do
    puts "To install Triaz Content Library:\n" \
         "  open \'#{caskroom_path}/#{version}/Triaz_macOS/Triaz Content Installer/Triaz Content Installer.dmg\'"
  end

  uninstall pkgutil: "com.wavealchemy.pkg.Triaz*"
end
