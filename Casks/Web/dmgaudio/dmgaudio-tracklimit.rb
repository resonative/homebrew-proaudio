cask "dmgaudio-tracklimit" do
  version "1.13"
  sha256 "c887638df1f409c5a81d45173f8cf1881280c100630ec5e494f9d4baa61895b3"

  url "https://dmgaudio.com/dl/TrackLimit_v#{version}/TrackLimitMac_v#{version}.zip"
  name "DMGAudio TrackLimit"
  desc "Simple and quick wide-band limiter"
  homepage "https://dmgaudio.com/tracklimit"

  livecheck do
    cask "dmgaudio-tracklimit"
  end

  auto_updates false

  pkg "TrackLimitMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.TrackLimitAAX",
    "com.dmgaudio.pkg.TrackLimitAU",
    "com.dmgaudio.pkg.TrackLimitResources",
    "com.dmgaudio.pkg.TrackLimitVST",
    "com.dmgaudio.pkg.TrackLimitVST3",
  ]
end
