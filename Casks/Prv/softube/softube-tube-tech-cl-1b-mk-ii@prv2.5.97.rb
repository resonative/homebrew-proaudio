cask "softube-tube-tech-cl-1b-mk-ii@prv2.5.97" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.5.97,e9ab2723"
  sha256 "038bf07cd3d711a2637e23bc04c1d299b7a948d7849aa12e10807815e2b51810"

  url "#{prv_archive_url}/s/softube-tube-tech-cl-1b-mk-ii/v#{version.csv.first}/Softube%20Tube-Tech%20CL%201B%20mk%20II%20Installer%20#{version.csv.first}%20#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "Softube Tube-Tech CL 1B Mk II"
  desc "Tube-tube compressor hardware emulation"
  homepage "https://www.softube.com/us/plug-ins/tube-tech-complete-collection-2"

  auto_updates false

  pkg "Softube Tube-Tech CL 1B mk II Installer #{version.csv.first} #{version.csv.second}.pkg"

  uninstall script: {
              executable: "installer",
              args:       [
                "-pkg",
                "/Library/Application Support/Softube/Softube Tube-Tech CL 1B mk II Uninstaller.pkg",
                "-target",
                "/",
              ],
              sudo:       true,
            },
            delete: [
              "/Library/Application Support/Softube/Softube Tube-Tech CL 1B mk II Uninstaller.pkg",
              "/Library/Application Support/Softube/Softube Tube-Tech CL 1B mk II Uninstaller.pkg.sig",
            ]

  zap delete: "/Library/Application Support/Softube/Presets/Tube-Tech CL 1B mk II.spt"

  caveats "Last version compatible with macos 12 Monterey"
end
