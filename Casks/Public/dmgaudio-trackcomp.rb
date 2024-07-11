cask "dmgaudio-trackcomp" do
  version "2.09"
  sha256 "40c1a9f5b12dd267ebc13d8387f4314c165dfbb7a85fefe88284ea45bdd0d969"

  url "https://dmgaudio.com/dl/TrackComp_v#{version}/TrackCompMac_v#{version}.zip"
  name "DMGAudio TrackComp"
  desc "Quick compressor with analog models"
  homepage "https://dmgaudio.com/trackcomp"

  livecheck do
    cask "dmgaudio-trackcomp"
  end

  auto_updates false

  pkg "TrackCompMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.TrackCompAAX",
    "com.dmgaudio.pkg.TrackCompAU",
    "com.dmgaudio.pkg.TrackCompResources",
    "com.dmgaudio.pkg.TrackCompVST",
    "com.dmgaudio.pkg.TrackCompVST3",
  ]
end
