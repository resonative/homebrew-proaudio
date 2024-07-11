cask "dmgaudio-limitless" do
  version "1.19"
  sha256 "d7c3d21579846f61a2e89f72e884aec78bc6bb597c55a782beef67fd65f2c664"

  url "https://dmgaudio.com/dl/Limitless_v#{version}/LimitlessMac_v#{version}.zip"
  name "DMGAudio Limitless"
  desc "Multiband dual-stage limiting"
  homepage "https://dmgaudio.com/limitless"

  livecheck do
    cask "dmgaudio-limitless"
  end

  auto_updates false

  pkg "LimitlessMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.LimitlessAAX",
    "com.dmgaudio.pkg.LimitlessAU",
    "com.dmgaudio.pkg.LimitlessResources",
    "com.dmgaudio.pkg.LimitlessVST",
    "com.dmgaudio.pkg.LimitlessVST3",
  ]
end
