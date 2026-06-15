cask "spectrasonics-trilian@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1"
  sha256 :no_check

  url "#{prv_archive_url}/s/spectrasonics-trilian/v#{version}/Trilian%20Installation.zip",
      verified: prv_archive_url.to_s
  name "Spectrasonics Trilian"
  desc "Multi sample bass sample library"
  homepage "https://www.spectrasonics.net/products/trilian/overview.php"

  auto_updates true

  installer manual: "Trilian Installation/Mac/Trilian Installer.pkg"

  uninstall quit:    "com.spectrasonics.trilianstandalone",
            pkgutil: [
              "com.spectrasonics.Ruby",
			  "net.spectrasonics.Trilian",
            ]

  caveats "After download with Spectrasonics' download manager,\n" \
          "in the download location, zip the entire sub folder 'Trilian Installation'"
end
