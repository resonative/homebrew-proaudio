cask "eli-arousor@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.2.1"
  sha256 "4033dc3e231b640f9bf1be1b49294fb6af214788260f3482d5e999e13e0be988"

  url "#{prv_archive_url}/e/eli-arousor/v#{version}/Arousor_#{version.dots_to_underscores}_Installer_Mac.pkg",
      verified: prv_archive_url.to_s
  name "Empirical Labs Arousor"
  desc "Compressor"
  homepage "https://www.empiricallabs.com/product/arousor"

  auto_updates false

  pkg "Arousor_#{version.dots_to_underscores}_Installer_Mac.pkg"

  uninstall pkgutil: "com.eli.pkg.arousor_*"
end
