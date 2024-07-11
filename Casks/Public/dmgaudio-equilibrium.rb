cask "dmgaudio-equilibrium" do
  version "1.68"
  sha256 "0661f7a7cfc4d9219adf89cc185af7612a75c915a1c00372972ece5ecc2cdb4e"

  url "https://dmgaudio.com/dl/EQuilibrium_v#{version}/EQuilibriumMac_v#{version}.zip"
  name "DMGAudio EQuilibrium"
  desc "Comprehensive EQ"
  homepage "https://dmgaudio.com/equilibrium"

  livecheck do
    cask "dmgaudio-equilibrium"
  end

  auto_updates false

  pkg "EQuilibriumMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.EQuilibriumAAX",
    "com.dmgaudio.pkg.EQuilibriumAU",
    "com.dmgaudio.pkg.EQuilibriumResources",
    "com.dmgaudio.pkg.EQuilibriumVST",
    "com.dmgaudio.pkg.EQuilibriumVST3",
  ]
end
