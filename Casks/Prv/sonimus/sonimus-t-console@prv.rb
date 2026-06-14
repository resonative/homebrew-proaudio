cask "sonimus-t-console@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.0"
  sha256 "97e60991973a44bf5a487b55fc560aeb64a38cf85caf46c85db3c0aa2793cae0"

  url "#{prv_archive_url}/s/sonimus-t-console/v#{version}/TConsole-#{version}-Final-release-osx.dmg",
      verified: prv_archive_url.to_s
  name "Sonimus T-Console"
  desc "Console emulation plugin"
  homepage "https://sonimus.com/products/tconsole"

  auto_updates false

  pkg "TConsole installer.pkg"

  uninstall pkgutil: "com.Sonimus.*.pkg.TConsole"
end
