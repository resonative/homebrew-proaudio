cask "spectrasonics-keyscape@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1"
  sha256 :no_check

  url "#{prv_archive_url}/s/spectrasonics-keyscape/v#{version}/Keyscape%20#{version}%20Installation.zip",
      verified: prv_archive_url.to_s
  name "Spectrasonics Keyscape"
  desc "Multi sample keyboard sample library"
  homepage "https://www.spectrasonics.net/products/keyscape/overview.php"

  auto_updates true

  installer manual: "Keyscape Installation/Mac/Keyscape Installer.pkg"

  uninstall quit:    "com.spectrasonics.keyscapestandalone",
            pkgutil: [
              "net.spectrasonics.Keyscape",
              "net.spectrasonics.KeyscapeA",
            ]

  caveats "After download with Spectrasonics' download manager,\n" \
          "in the download location, zip the entire sub folder 'Keyscape Installation'"
end
