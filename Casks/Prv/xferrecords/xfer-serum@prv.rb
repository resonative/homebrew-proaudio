cask "xfer-serum@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.0.19"
  sha256 "2da0feda8e63b32a55a2ecd8367e6a2c596e41892f9159bbcbdcc2c9ae5bdbdc"

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
