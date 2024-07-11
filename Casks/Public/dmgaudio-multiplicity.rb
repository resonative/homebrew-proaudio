cask "dmgaudio-multiplicity" do
  version "1.13"
  sha256 "d26513153924903e39cf4d0e44472ec34b9a8878e58bbf50bd9759ac908a6d73"

  url "https://dmgaudio.com/dl/Multiplicity_v#{version}/MultiplicityMac_v#{version}.zip"
  name "DMGAudio Multiplicity"
  desc "8 bands crossover/dynamic EQ"
  homepage "https://dmgaudio.com/multiplicity"

  livecheck do
    cask "dmgaudio-multiplicity"
  end

  auto_updates false

  pkg "MultiplicityMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.MultiplicityAAX",
    "com.dmgaudio.pkg.MultiplicityAU",
    "com.dmgaudio.pkg.MultiplicityResources",
    "com.dmgaudio.pkg.MultiplicityVST",
    "com.dmgaudio.pkg.MultiplicityVST3",
  ]
end
