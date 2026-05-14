cask "xfer-serum@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.1.4"
  sha256 "81a9f11e38957e621c3336cf66ec5a99ae4cc8c360444e6eed82b81f88f62768"

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
