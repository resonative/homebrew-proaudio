cask "birdsthings-rolling-sampler@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end
  version "1.0.5"
  sha256 :no_check

  url "#{Utils.prv_archive_url}/b/birdsthings-rolling-sampler/v1.0.5/utkORTEwSUSEMylQ6yRi_Rolling Sampler.zip"

  name "Bird's Things Rolling Sampler"
  desc "Always-on recorder"
  homepage "https://www.birdsthings.com"

  auto_updates false

  pkg "macOS/Rolling Sampler Installer.pkg"

  uninstall pkgutil: "com.birdbird.rollingsampler.pkg.*"
end
