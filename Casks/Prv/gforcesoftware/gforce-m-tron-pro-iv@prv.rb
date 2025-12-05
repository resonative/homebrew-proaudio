cask "gforce-m-tron-pro-iv@prv" do
    class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.2"
  sha256 "dfa0302daa55e6313d7ab8a48bfd1506d0b569eaa437936a3f4cee0d5ebb09dd"

  url "#{prv_archive_url}/g/gforce-m-tron-pro-iv/v#{version}/M-TronPro-IV-#{version}-Installer-macOS.dmg",
      verified: prv_archive_url.to_s
  name "Gforce Software M-tron Pro IV"
  desc "Mellotron sample collection and player"
  homepage "https://www.gforcesoftware.com/products/m-tron-pro-iv/"

  auto_updates false

  pkg "Install Software.pkg"

  uninstall pkgutil: "com.GForce.MTronProIV*"
end
