cask "softube-wasted-space@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "2a75f93a1791a9a72b20edba2724428c401341852b9a6af82a0e1ec7f7fd9118"

  url "#{prv_archive_url}/s/softube-wasted-space/v#{version.csv.first}/Softube%20Wasted%20Space%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Wasted Space"
  desc "Lo-fi reverb"
  homepage "https://www.softube.com/us/plug-ins/wasted-space"

  auto_updates false

  pkg "Softube Wasted Space Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Wasted Space Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Wasted Space Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Wasted Space Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/Wasted Space.spt"

  caveats "Last version compatible with macos 12 Monterey"
end
