cask "softube-tape@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "fad2df98706c33d136491cb944c7f0ef31b58832f2ffa38354ecd68252dff8a7"

  url "#{prv_archive_url}/s/softube-tape/v#{version.csv.first}/Softube%20Tape%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Tape"
  desc "Tape emulation"
  homepage "https://www.softube.com/us/plug-ins/tape"

  auto_updates false

  pkg "Softube Tape Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Tape Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Tape Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Tape Uninstaller.pkg.sig",
            ]

  zap delete: [
    "/Library/Application Support/Softube/Presets/Tape.spt",
    "/Library/Application Support/Softube/Presets/Tape Multi Track.spt",
  ]

  caveats "Last version compatible with macos 12 Monterey"
end
