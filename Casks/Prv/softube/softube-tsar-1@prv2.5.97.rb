cask "softube-tsar-1@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "648bb854f74ca6ad796679503c392587d74d67ded13ac4637f34d6c44ff5ace5"

  url "#{prv_archive_url}/s/softube-tsar-1/v#{version.csv.first}/Softube%20TSAR-1%20Reverb%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube TSAR-1"
  desc "Reverb"
  homepage "https://www.softube.com/us/plug-ins/mixing/reverb-room/tsar-1-reverb"

  auto_updates false

  pkg "Softube TSAR-1 Reverb Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube TSAR-1 Reverb Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube TSAR-1 Reverb Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube TSAR-1 Reverb Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/TSAR-1 Reverb.spt"

  caveats "Last version compatible with macos 12 Monterey"
end
