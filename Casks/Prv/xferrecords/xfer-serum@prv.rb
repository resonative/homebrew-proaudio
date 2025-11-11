cask "xfer-serum@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.0.23"
  sha256 "48ffb9cdeac10e9e60033572a9bb30c614a51b0b2e76f59c0cf827779da03f20"

  url "#{prv_archive_url}/x/xfer-serum/v#{version}/Install_Xfer_Serum2_#{version}.pkg",
      verified: prv_archive_url.to_s
  name "Xfer Records Serum"
  desc "Wavetable synth"
  homepage "https://xferrecords.com/products/serum-2"

  auto_updates false

  pkg "Install_Xfer_Serum2_#{version}.pkg"

  uninstall pkgutil: "com.xfer.serum2.*"

  zap trash: [
    # "~/Library/Application Support/com.xfer.serum2/",
    "~/Library/Preferences/Serum2Prefs.json",
  ]
end
