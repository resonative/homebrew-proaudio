cask "dmgaudio-expurgate" do
  version "1.15"
  sha256 "b8daee6326ac031a2c49019435db796e414363a380468bc7e4f12af0ebb690d0"

  url "https://dmgaudio.com/dl/Expurgate_v#{version}/ExpurgateMac_v#{version}.zip"
  name "DMGAudio Expurgate"
  desc "Fleixble Gate/Expander"
  homepage "https://dmgaudio.com/expurgate"

  livecheck do
    cask "dmgaudio-expurgate"
  end

  auto_updates false

  pkg "ExpurgateMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.ExpurgateAAX",
    "com.dmgaudio.pkg.ExpurgateAU",
    "com.dmgaudio.pkg.ExpurgateResources",
    "com.dmgaudio.pkg.ExpurgateVST",
    "com.dmgaudio.pkg.ExpurgateVST3",
  ]
end
