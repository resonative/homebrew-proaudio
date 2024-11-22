cask "dmgaudio-equality" do
  version "1.43"
  sha256 "7bf54841b3b3bb9196fa174baea607819716a8542b2b4037967eb27469163327"

  url "https://dmgaudio.com/dl/EQuality_v#{version}/EQualityMac_v#{version}.zip"
  name "DMGAudio EQuality"
  desc "Universal EQ"
  homepage "https://dmgaudio.com/equality"

  livecheck do
    cask "dmgaudio-equality"
  end

  auto_updates false

  pkg "EQualityMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.EQualityAAX",
    "com.dmgaudio.pkg.EQualityAU",
    "com.dmgaudio.pkg.EQualityResources",
    "com.dmgaudio.pkg.EQualityVST",
    "com.dmgaudio.pkg.EQualityVST3",
  ]
end
