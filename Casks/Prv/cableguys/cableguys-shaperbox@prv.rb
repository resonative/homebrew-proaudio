cask "cableguys-shaperbox@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.6"
  sha256 "09e9bd78684d047ebf81b9c92381a91fce4a65af8e0679b7d8aad282bd3d60a4"

  url "#{prv_archive_url}/c/cableguys-shaperbox/v#{version}/Cableguys-ShaperBox-#{version}.zip",
      verified: prv_archive_url.to_s
  name "Cableguys ShaperBox"
  desc "Tempo-synced audio effects"
  homepage "https://www.cableguys.com/shaperbox"

  auto_updates false

  pkg "Cableguys - ShaperBox #{version}/Mac/Cableguys - ShaperBox #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.shaperbox3.*"

  zap delete: [
    "~/Library/Cableguys/ShaperBox3/",
    "~/Library/Preferences/de.cableguys.shaperbox3.plist", # Contains license info
  ]
end
