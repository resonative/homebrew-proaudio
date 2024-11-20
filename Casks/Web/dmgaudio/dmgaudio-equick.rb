cask "dmgaudio-equick" do
  version "1.26"
  sha256 "17cc2e091a10b2000e9988fefba6bcafd4713dadde2e3650f828b1ae56ff9339"

  url "https://dmgaudio.com/dl/EQuick_v#{version}/EQuickMac_v#{version}.zip"
  name "DMGAudio EQuick"
  desc "Simple and quick EQ"
  homepage "https://dmgaudio.com/equick"

  livecheck do
    cask "dmgaudio-equick"
  end

  auto_updates false

  pkg "EQuickMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.EQuickAAX",
    "com.dmgaudio.pkg.EQuickAU",
    "com.dmgaudio.pkg.EQuickResources",
    "com.dmgaudio.pkg.EQuickVST",
    "com.dmgaudio.pkg.EQuickVST3",
  ]
end
