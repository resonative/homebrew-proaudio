cask "softube-tube-tech-classic-channel-mk-ii@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "e5a6af83e80542808f3173cf1ac29b1a3d58172af1c0b066d61d7ca4a1c15eef"

  url "#{prv_archive_url}/s/softube-tube-tech-classic-channel-mk-ii/v#{version.csv.first}/Softube%20Tube-Tech%20Classic%20Channel%20mk%20II%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Tube-Tech Classic Channel Mk II"
  desc "Tube-tube hardware emulation"
  homepage "https://www.softube.com/us/plug-ins/tube-tech-complete-collection-2"

  auto_updates false

  pkg "Softube Tube-Tech Classic Channel mk II Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Tube-Tech Classic Channel mk II Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Tube-Tech Classic Channel mk II Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Tube-Tech Classic Channel mk II Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/Tube-Tech Classic Channel mk II.spt"
end
