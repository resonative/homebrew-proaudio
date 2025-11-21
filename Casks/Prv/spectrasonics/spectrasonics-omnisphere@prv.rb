cask "spectrasonics-omnisphere@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3"
  sha256 :no_check

  url "#{prv_archive_url}/s/spectrasonics-omnisphere/v#{version}/Omnisphere%20#{version}%20Installation.zip",
      verified: prv_archive_url.to_s
  name "Spectrasonics Omnisphere"
  desc "Multi sample synthesizer"
  homepage "https://www.spectrasonics.net/products/omnisphere/overview.php"

  auto_updates true

  installer manual: "Omnisphere 3 Installation/Mac/Omnisphere 3 Installer.pkg"

  uninstall pkgutil: "com.Audija.pkg.AudijaKickDrum.*"

  caveats "After download with Spectrasonics' download manager,\n"\
          "in the download location, zip the entire sub folder 'Omnisphere 3 Installation'"
end
