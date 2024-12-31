cask "wavealchemy-triaz@prv" do
  module Utils
    def self.prv_archive_url
      # json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      # data = JSON.parse(File.read(json_path))
      # data['server'] ||= "http://not_configured.lan"
    end
  end

  version "1.1.1"
  sha256 "42dc08afed1ee3a038cde385cf051f66a23a925a5788755dee0ba6813acdc5a7"

  url "#{Utils.prv_archive_url}/w/wavealchemy-triaz/v#{version}/Triaz_macOS.zip"
  name "Wave Alchemy Triaz"
  desc "Drum Machine instrument"
  homepage "https://www.wavealchemy.co.uk/product/triaz/"

  auto_updates false

  pkg "Triaz_macOS/Triaz Plugin Installer/Triaz Plugin Installer #{version}.pkg"

  uninstall pkgutil: "com.wavealchemy.pkg.Triaz*"

  caveats "After install, install content manually from\n" \
          "#{caskroom_path}/#{version}/Triaz Content Installer/Triaz Content Installer.dmg"
end
