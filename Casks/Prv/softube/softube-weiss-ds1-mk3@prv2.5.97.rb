cask "softube-weiss-ds1-mk3@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "ca7d70f69e147389d2abdf6cc41f2f16e250799b348747ea1f8015a1a212fb56"

  url "#{prv_archive_url}/s/softube-weiss-ds1-mk3/v#{version.csv.first}/Softube%20Weiss%20DS1-MK3%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Weiss DS1-MK3"
  desc "Weiss dynamic processor emulation"
  homepage "https://www.softube.com/us/plug-ins/weiss-ds1-mk3"

  auto_updates false

  pkg "Softube Weiss DS1-MK3 Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Weiss DS1-MK3 Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Weiss DS1-MK3 Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Weiss DS1-MK3 Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/Weiss DS1-MK3.spt"

  caveats "Last version compatible with macos 12 Monterey"
end
