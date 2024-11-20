cask "dmgaudio-compassion" do
  version "1.30"
  sha256 "d2bfae53e426c393a56575bb266c599f5298ba06fa6ab4d0a5dd9f86078cce15"

  url "https://dmgaudio.com/dl/Compassion_v#{version}/CompassionMac_v#{version}.zip"
  name "DMGAudio Compassion"
  desc "Flexible Dynamics Processor"
  homepage "https://dmgaudio.com/compassion"

  livecheck do
    cask "dmgaudio-compassion"
  end

  auto_updates false

  pkg "CompassionMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.CompassionAAX",
    "com.dmgaudio.pkg.CompassionAU",
    "com.dmgaudio.pkg.CompassionResources",
    "com.dmgaudio.pkg.CompassionVST",
    "com.dmgaudio.pkg.CompassionVST3",
  ]
end
