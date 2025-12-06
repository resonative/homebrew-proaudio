cask "gforce-vsm-iv@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.0"
  sha256 "714b24ba7996e9c42e7a339914e078a659189c214e3569070f98d25dcef95065"

  url "#{prv_archive_url}/g/gforce-vsm-iv/v#{version}/VSM-IV-#{version}-Installer-macOS.dmg",
      verified: prv_archive_url.to_s
  name "Gforce Software VSM IV"
  desc "String machines sample player"
  homepage "https://www.gforcesoftware.com/products/vsm-iv/"

  auto_updates false

  pkg "Double Click to Install.pkg"

  uninstall pkgutil: "com.GForce.VSM_IV*"
end
