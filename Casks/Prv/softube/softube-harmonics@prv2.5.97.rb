cask "softube-harmonics@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "58b9f55ecfa1f40a32e2880af7439e1647a9ec5f738c3aef41d7682cd923fa62"

  url "#{prv_archive_url}/s/softube-harmonics/v#{version.csv.first}/Softube%20Harmonics%20Analog%20Saturation%20Processor%20Installer%20#{version.csv.first} #{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Harmonics"
  desc "Saturation"
  homepage "https://www.softube.com/us/plug-ins/harmonics-analog-saturation-processor"

  auto_updates false

  pkg "Softube Harmonics Analog Saturation Processor Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Harmonics Analog Saturation Processor Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Harmonics Analog Saturation Processor Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Harmonics Analog Saturation Processor Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/Harmonics Analog Saturation Processor.spt"

  caveats "Last version compatible with macos 12 Monterey"
end
