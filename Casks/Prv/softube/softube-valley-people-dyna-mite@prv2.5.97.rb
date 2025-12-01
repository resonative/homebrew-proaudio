cask "softube-valley-people-dyna-mite@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "ffa7d867ba224816b019dbe3fa0f6d5ad56d1173c0ecaab8431f3b21dfc3bd0a"

  url "#{prv_archive_url}/s/softube-valley-people-dyna-mite/v#{version.csv.first}/Softube%20Valley%20People%20Dyna-mite%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Valley People Dyna-mite"
  desc "Hardware compressor emulation"
  homepage "https://www.softube.com/us/plug-ins/valley-people-dyna-mite"

  auto_updates false

  pkg "Softube Valley People Dyna-mite Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Valley People Dyna-mite Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Valley People Dyna-mite Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Valley People Dyna-mite Uninstaller.pkg.sig",
            ]

  zap delete: [
    "/Library/Application Support/Softube/Presets/Valley People Dyna-mite Gate.spt",
    "/Library/Application Support/Softube/Presets/Valley People Dyna-mite Slam.spt",
    "/Library/Application Support/Softube/Presets/Valley People Dyna-mite.spt",
  ]

  caveats "Last version compatible with macos 12 Monterey"
end
