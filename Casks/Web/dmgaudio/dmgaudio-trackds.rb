cask "dmgaudio-trackds" do
  version "1.13"
  sha256 "bb59b4853d5b98cf2d10e56ed2ac25dd23c078b57c765c218435910ddc2d7960"

  url "https://dmgaudio.com/dl/TrackDS_v#{version}/TrackDSMac_v#{version}.zip"
  name "DMGAudio TrackDS"
  desc "Quick De-Esser"
  homepage "https://dmgaudio.com/trackds"

  livecheck do
    cask "dmgaudio-trackds"
  end

  auto_updates false

  pkg "TrackDSMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.TrackDSAAX",
    "com.dmgaudio.pkg.TrackDSAU",
    "com.dmgaudio.pkg.TrackDSResources",
    "com.dmgaudio.pkg.TrackDSVST",
    "com.dmgaudio.pkg.TrackDSVST3",
  ]
end
