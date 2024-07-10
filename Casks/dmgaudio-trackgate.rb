cask "dmgaudio-trackgate" do
  version "1.13"
  sha256 "dd30408367fe00d82dbcf995cc7a1223533c4937183fac3ef88391b9d51bc50d"

  url "https://dmgaudio.com/dl/TrackGate_v#{version}/TrackGateMac_v#{version}.zip"
  name "DMGAudio TrackGate"
  desc "Quick Smart Gating"
  homepage "https://dmgaudio.com/trackgate"

  livecheck do
    cask "dmgaudio-trackgate"
  end

  auto_updates false

  pkg "TrackGateMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.TrackGateAAX",
    "com.dmgaudio.pkg.TrackGateAU",
    "com.dmgaudio.pkg.TrackGateResources",
    "com.dmgaudio.pkg.TrackGateVST",
    "com.dmgaudio.pkg.TrackGateVST3",
  ]
end
