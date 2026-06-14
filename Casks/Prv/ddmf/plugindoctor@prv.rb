cask "plugindoctor@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.6.3"
  sha256 "6403c88541ae603fc67e0f73a0558f178a1c02ad7736586770889acdd9f2575b"

  url "#{prv_archive_url}/p/plugindoctor/v#{version}/PlugindoctorMac.v#{version.dots_to_underscores}.zip",
      verified: prv_archive_url.to_s
  name "DDMF Plugindoctor"
  desc "Audio plugin analyzer"
  homepage "https://ddmf.eu/plugindoctor/"

  auto_updates false

  pkg "Plugindoctor.pkg"

  uninstall quit:    "com.yourcompany.Scanslave",
            pkgutil: [
              "ScanHelper",
              "eu.ddmf.pkg.Plugindoctor",
              "eu.ddmf.pkg.Plugindoctor*",
            ],
            delete: [
              "~/Library/Caches/com.yourcompany.PluginAnalyzer/",
              "~/Library/HTTPStorages/com.yourcompany.PluginAnalyzer/",
              "~/Library/HTTPStorages/com.yourcompany.PluginAnalyzer.binarycookies",
            ]

  zap delete: [
    "~/Library/Application Support/DDMF/",
    "~/Library/Preferences/com.yourcompany.PluginAnalyzer.plist",
  ]
end
