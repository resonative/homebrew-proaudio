cask "sonimus-n-console@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.1.0"
  sha256 "5cefc91366e7b6290a115169fde56890f74da40e39354a4bdb44c6cb419f0460"

  url "#{prv_archive_url}/s/sonimus-a-console/v#{version}/NConsole-#{version}-RC1-release-osx.dmg",
      verified: prv_archive_url.to_s
  name "Sonimus N-Console"
  desc "Console emulation plugin"
  homepage "https://sonimus.com/products/nconsole"

  auto_updates false

  pkg "NConsole installer.pkg"

  uninstall pkgutil: "com.Sonimus.*.pkg.NConsole"
end
