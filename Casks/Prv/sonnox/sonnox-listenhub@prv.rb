cask "sonnox-listenhub@prv" do
  # def self.prv_archive_url
  #   json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
  #   data = JSON.parse(File.read(json_path))
  #   data["server"] ||= "http://not_configured.lan"
  # end
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.02.0,1104"
  sha256 "711c04da7c26ebb52c8287731260b1c9128e77687f246cee0b161b6e69c6cf2b"

  url "#{prv_archive_url}/s/sonnox-listenhub/v#{version.csv.first}/sonnox_listenhub_installer_macos_v#{version.csv.first}#{version.csv.second}p.zip",
      verified: prv_archive_url.to_s
  name "Sonnox ListenHub"
  desc "Software monitoring utility"
  homepage "https://sonnox.com/products/listenhub"

  auto_updates false

  pkg "Step 1 - Install ListenHub v#{version.csv.first}[#{version.csv.second}]P.pkg"

  uninstall quit:    "com.sonnox.listenhub",
            pkgutil: [
              "com.sonnox.pkg.listenhub.launchagent",
              "com.sonnox.pkg.listenhub.uninstaller.app",
              "com.sonnox.pkg.mcon.*",
            ]

  zap delete: [
    "/Library/Preferences/Audio/Sonnox/DawPluginToAppPort.udp",
    "/Library/Preferences/Audio/Sonnox/ListenHubDAWDriverState.xml",
    "/Library/Preferences/Audio/Sonnox/ListenHubState.xml",
    "/Library/Preferences/Audio/Sonnox/ListenHubSystemDriverState.xml",
    "/Library/Preferences/Audio/Sonnox/SystemProfile.xml",
    "~/Library/Preferences/com.sonnox.listenhub.plist",
  ]
end
