cask "sonimus-a-console@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.1.0"
  sha256 "702b5292fffa97015274fe2efda0c9c3426579b423c8cc09a10c68472af10f78"

  url "#{prv_archive_url}/s/sonimus-a-console/v#{version}/AConsole-#{version}-Final-release-osx.dmg",
      verified: prv_archive_url.to_s
  name "Sonimus A-Console"
  desc "Console emulation plugin"
  homepage "https://sonimus.com/products/aconsole"

  auto_updates false

  pkg "AConsole installer.pkg"

  uninstall pkgutil: "com.Sonimus.*.pkg.AConsole"
end
