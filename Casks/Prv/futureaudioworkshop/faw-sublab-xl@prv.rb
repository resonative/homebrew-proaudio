cask "faw-sublab-xl@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.6,100526"
  sha256 "b4a1733bf31fa9dff36f11b7442d5c402f58c6682bbd07e9cc246291bdcc5780"

  url "#{prv_archive_url}/f/faw-sublab-xl/v#{version.csv.first}/SubLabXL-Installer-#{version.csv.first}-#{version.csv.second}-macOS.dmg",
      verified: prv_archive_url.to_s
  name "Future Audio Workshop SubLab XL"
  desc "Bass synthesizer"
  homepage "https://futureaudioworkshop.com"

  auto_updates false

  pkg "SubLabXL.pkg"

  uninstall pkgutil: [
    "com.futureaudioworkshop.pkg.FAWXLSubLab",
    "com.futureaudioworkshop.pkg.SubLabXL*",
  ]
end
