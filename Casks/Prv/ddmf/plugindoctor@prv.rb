cask "plugindoctor@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.4.1"
  sha256 "78e96fe2a37d26cddff25f351680967a16bd06aa7ea7f6128b5c002aaee767cb"

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
            ]
            delete: [
              "~/Library/Caches/com.yourcompany.PluginAnalyzer/"
              "~/Library/HTTPStorages/com.yourcompany.PluginAnalyzer/",
              "~/Library/HTTPStorages/com.yourcompany.PluginAnalyzer.binarycookies",
            ]

  zap delete: [
    "~/Library/Application Support/DDMF/",
    "~/Library/Preferences/com.yourcompany.PluginAnalyzer.plist",
  ]
end
