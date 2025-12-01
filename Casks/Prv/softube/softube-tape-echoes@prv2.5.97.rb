cask "softube-tape-echoes@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "cfac9cd2875d75ecb081a81c51afd94a7c5518ee9bcf345028bbfc4af39ae2e6"

  url "#{prv_archive_url}/s/softube-tape-echoes/v#{version.csv.first}/Softube%20Tape%20Echoes%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Tape Echoes"
  desc "Tape echo Echoes"
  homepage "https://www.softube.com/us/plug-ins/tape-echoes"

  auto_updates false

  pkg "Softube Tape Echoes Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Tape Echoes Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Tape Echoes Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Tape Echoes Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/Tape Echoes.spt"

  caveats "Last version compatible with macos 12 Monterey"
end
