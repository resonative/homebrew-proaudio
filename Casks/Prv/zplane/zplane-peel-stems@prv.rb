cask "zplane-peel-stems@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.3,773"
  sha256 "7cf2c4c0a1fee4ca62d2f3deef10caf1786bf880ef6ff75248d3f770d4b00c09"

  url "#{prv_archive_url}/z/zplane-peel-stems/v#{version.csv.first}/PEEL-STEMS_#{version.csv.first}_Installer_rev#{version.csv.second}.pkg",
      verified: prv_archive_url.to_s
  name "zplane PEEL STEMS"
  desc "Stem separation tool"
  homepage "https://products.zplane.de/products/peel-stems"

  auto_updates false

  pkg "PEEL-STEMS_#{version.csv.first}_Installer_rev#{version.csv.second}.pkg"

  uninstall pkgutil: "com.zplane.peel-stems.*",
            delete:  "/Applications/zplane/PEEL-STEMS"
end
