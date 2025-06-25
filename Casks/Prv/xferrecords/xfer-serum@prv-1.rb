cask "xfer-serum@prv-1" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "1.36b8"
  sha256 "4e7eecb135ff4035ab76d89b6a762dbb63c78ae558a5d3067754606e9db147df"

  url "#{prv_archive_url}/x/xfer-serum/v#{version}/Install_Xfer_Serum_#{version.no_dots}.dmg",
      verified: prv_archive_url.to_s
  name "Xfer Records Serum"
  desc "Wavetable synth"
  homepage "https://xferrecords.com/products/serum"

  auto_updates false

  pkg "Install_Xfer_Serum.pkg"

  uninstall pkgutil: [
    "com.xfer.serum.*",
    "com.xfer.Serum.Presets",
  ]
end
