cask "dmgaudio-essence" do
  version "1.17"
  sha256 "66ddb73494b41a9d8c7d622a26c7cacbf012d56568962105332d456612f36c6f"

  url "https://dmgaudio.com/dl/Essence_v#{version}/EssenceMac_v#{version}.zip"
  name "DMGAudio Essence"
  desc "Flexible De-esser"
  homepage "https://dmgaudio.com/essence"

  livecheck do
    cask "dmgaudio-essence"
  end

  auto_updates false

  pkg "EssenceMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.EssenceAAX",
    "com.dmgaudio.pkg.EssenceAU",
    "com.dmgaudio.pkg.EssenceResources",
    "com.dmgaudio.pkg.EssenceVST",
    "com.dmgaudio.pkg.EssenceVST3",
  ]
end
