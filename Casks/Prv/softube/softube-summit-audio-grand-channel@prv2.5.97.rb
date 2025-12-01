cask "softube-summit-audio-grand-channel@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "731ab3c6e228bbf848e4e4c3bd8c97a802050a7a3c8e2a118a6c60f727a915f1"

  url "#{prv_archive_url}/s/softube-summit-audio-grand-channel/v#{version.csv.first}/Softube%20Summit%20Audio%20Grand%20Channel%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Summit Audio Grand Channel"
  desc "Summit Audio emulation channel strip"
  homepage "https://www.softube.com/us/plug-ins/summit-audio-grand-channel"

  auto_updates false

  pkg "Softube Summit Audio Grand Channel Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Summit Audio Grand Channel Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Summit Audio Grand Channel Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Summit Audio Grand Channel Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/Summit Audio Grand Channel.spt"

  caveats "Last version compatible with macos 12 Monterey"
end
