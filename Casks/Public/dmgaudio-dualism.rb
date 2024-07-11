cask "dmgaudio-dualism" do
  version "1.19"
  sha256 "7244469014b7f3e3443c474c8fc2c17a03326e569b54563d7c9f0c44d8d29e4b"

  url "https://dmgaudio.com/dl/Dualism_v#{version}/DualismMac_v#{version}.zip"
  name "DMGAudio Dualism"
  desc "Stereo Control and Analysis"
  homepage "https://dmgaudio.com/dualism"

  livecheck do
    cask "dmgaudio-dualism"
  end

  auto_updates false

  pkg "DualismMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.DualismAAX",
    "com.dmgaudio.pkg.DualismAU",
    "com.dmgaudio.pkg.DualismResources",
    "com.dmgaudio.pkg.DualismVST",
    "com.dmgaudio.pkg.DualismVST3",
  ]
end
