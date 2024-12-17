cask "cableguys-shaperbox@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "3.5.3"
  sha256 "bd0034c4ca641d5d9208544ee19ca666aeb15b1083184947ed65b1a799f41d40"

  url "#{Utils.prv_archive_url}/c/cableguys-shaperbox/v#{version}/Cableguys-ShaperBox3.zip",
      verified: Utils.prv_archive_url("verified").to_s
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
