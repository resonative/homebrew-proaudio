cask "ee-soliste@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  arch arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "797999fd5528947987ced62bc8f5b633a3feb3a11dd3594ad3e3ae12037ada5a",
         intel: "ae26d5944445510ae33589e129c9a5ec7fbd713e6e7ede71da46b712c5c3b4fa"

  on_arm do
    url "#{prv_archive_url}/e/ee-soliste/v#{version}/Soliste-#{version}_MACARM.zip",
        verified: prv_archive_url.to_s
  end
  on_intel do
    url "#{prv_archive_url}/e/ee-soliste/v#{version}/Soliste-#{version}_MACINTEL.zip",
        verified: prv_archive_url.to_s
  end

  name "ExpressiveE Soliste"
  desc "Physical model strings"
  homepage "https://www.expressivee.com/139-soliste"

  auto_updates false

  pkg "Soliste.CLO.756-#{version}-Darwin-#{arch}.pkg"
  pkg "Soliste.DBS.1130-#{version}-Darwin-#{arch}.pkg"
  pkg "Soliste.VLA.419-#{version}-Darwin-#{arch}.pkg"
  pkg "Soliste.VLN.356-#{version}-Darwin-#{arch}.pkg"

  uninstall pkgutil: [
    "com.expressivee.Soliste CLO.756.*",
    "com.expressivee.Soliste DBS.1130.*",
    "com.expressivee.Soliste VLA.419.*",
    "com.expressivee.Soliste VLN.356.*",
  ]
end
