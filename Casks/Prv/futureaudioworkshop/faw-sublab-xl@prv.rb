cask "faw-sublab-xl@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "1.0.4"
  sha256 "a601f8432d35c85cf02dc14d748f0fbe760f94de19bbcf34ef76f72f3a5f26bd"

  url "#{Utils.prv_archive_url}/f/faw-sublab-xl/v#{version}/SubLabXL-Installer-#{version}-Sequoia-macOS-Release-261124.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Future Audio Workshop SubLab XL"
  desc "Bass synthesizer"
  homepage "https://futureaudioworkshop.com"

  auto_updates false
  container nested: "SubLabXL-Installer.dmg"

  pkg "SubLabXL.pkg"

  uninstall pkgutil: [
    "com.futureaudioworkshop.pkg.FAWXLSubLab",
    "com.futureaudioworkshop.pkg.SubLabXL*",
  ]
end
