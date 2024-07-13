include('opt/homebrew/Library/Taps/resonative/homebrew-proaudio/include/local_archive_url.rb')

cask "dmgaudio-compassion-prv" do
  # module Utils
  #   def self.prv_archive_url
  #     data = JSON.parse(File.read("#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"))
  #     data['server'].nil? ? data['server'] = "http://not_configured.lan" : data['server']
  #     return data['server']
  #   end
  # end
  version "1.30"
  sha256 "d2bfae53e426c393a56575bb266c599f5298ba06fa6ab4d0a5dd9f86078cce15"


  url "#{Utils.prv_archive_url}/DMGAudio/CompassionMac_v#{version}WRONG.zip"
  name "DMGAudio Compassion"
  desc "Flexible Dynamics Processor"
  homepage "http://dmgaudio.com"

  livecheck do
    cask "dmgaudio-compassion-prv"
  end

  auto_updates false
  conflicts_with cask: "dmgaudio-compassion"

  pkg "CompassionMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.CompassionAAX",
    "com.dmgaudio.pkg.CompassionAU",
    "com.dmgaudio.pkg.CompassionResources",
    "com.dmgaudio.pkg.CompassionVST",
    "com.dmgaudio.pkg.CompassionVST3",
  ]
end
