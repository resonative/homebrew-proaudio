cask "wavealchemy-triaz@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "1.2.0"
  sha256 "173488dc558817c7e67a28ea61382d94afa5112f3cf9d81e71d70f96c3bfd4ef"

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
