cask "ad-ratshack-reverb@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "3.1.0"
  sha256 "f5ae95b5e5c2ad97a979121a0bf40ff1750c0d60d0f07a307f22e16cb8595b03"

  url "#{Utils.prv_archive_url}/a/ad-ratshack-reverb/v#{version}/AD047_Ratshack_Reverb_#{version.no_dots}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "Audio Damage Ratshack Reverb"
  desc "Realistic Electronic Reverb emulation"
  homepage "https://www.audiodamage.com/products/ad002-ratshack-reverb"

  auto_updates false

  pkg "AD047_Ratshack_Reverb_#{version.no_dots}/macOS_RatshackReverb_#{version.no_dots}.pkg"

  uninstall pkgutil: "com.audiodamage.pkg.rr3*"
end
