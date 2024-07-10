cask "dmgaudio-pitchfunk" do
  version "1.24"
  sha256 "b1ea22873f428c43e66893441b0c30cfff0d730b42ff4299e3982ae481383681"

  url "https://dmgaudio.com/dl/PitchFunk_v#{version}/PitchFunkMac_v#{version}.zip"
  name "DMGAudio PitchFunk"
  desc "Modulating Multi-FX"
  homepage "https://dmgaudio.com/pitchfunk"

  livecheck do
    cask "dmgaudio-pitchfunk"
  end

  auto_updates false

  pkg "PitchFunkMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.PitchFunkAAX",
    "com.dmgaudio.pkg.PitchFunkAU",
    "com.dmgaudio.pkg.PitchFunkResources",
    "com.dmgaudio.pkg.PitchFunkVST",
    "com.dmgaudio.pkg.PitchFunkVST3",
  ]
end
