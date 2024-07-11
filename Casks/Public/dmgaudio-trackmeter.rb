cask "dmgaudio-trackmeter" do
  version "1.13"
  sha256 "a4f0c4c784d3bde7edf2c4014e4aeae6f6168c7537d17b39aab5ee3497b5ab37"

  url "https://dmgaudio.com/dl/TrackMeter_v#{version}/TrackMeterMac_v#{version}.zip"
  name "DMGAudio TrackMeter"
  desc "Resizable multi-mode analyzer"
  homepage "https://dmgaudio.com/trackmeter"

  livecheck do
    cask "dmgaudio-trackmeter"
  end

  auto_updates false

  pkg "TrackMeterMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.TrackMeterAAX",
    "com.dmgaudio.pkg.TrackMeterAU",
    "com.dmgaudio.pkg.TrackMeterResources",
    "com.dmgaudio.pkg.TrackMeterVST",
    "com.dmgaudio.pkg.TrackMeterVST3",
  ]
end
