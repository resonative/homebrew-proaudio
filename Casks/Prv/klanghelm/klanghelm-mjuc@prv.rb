cask "klanghelm-mjuc@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.8.1"
  sha256 "2a026a5bc88858884c1911f68ba2f539f35195879e7a4eaac5d5f2e427f66204"

  url "#{prv_archive_url}/k/klanghelm-mjuc/v#{version}/MJUC-mac-installer.zip",
      verified: prv_archive_url("verified").to_s
  name "Klanghelm MJUC"
  desc "Vari-mu compressor"
  homepage "https://klanghelm.com/contents/products/MJUC"

  auto_updates false
  container nested: "MJUC.dmg"

  pkg "MJUC-installer.pkg"

  uninstall pkgutil: "com.MJUC.pkg.*"
end
