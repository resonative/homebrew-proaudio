cask "birdsthings-rolling-sampler@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.5"
  sha256 "f3f7caaf7a4e83b4f9a9438d1e41d5a2979c8129d5f5b2d8a34855d587f4889d"

  url "#{prv_archive_url}/b/birdsthings-rolling-sampler/v#{version}/utkORTEwSUSEMylQ6yRi_Rolling Sampler.zip",
      verified: prv_archive_url.to_s
  name "Bird's Things Rolling Sampler"
  desc "Always-on recorder"
  homepage "https://www.birdsthings.com"

  auto_updates false

  pkg "macOS/Rolling Sampler Installer.pkg"

  uninstall pkgutil: "com.birdbird.rollingsampler.pkg.*"
end
