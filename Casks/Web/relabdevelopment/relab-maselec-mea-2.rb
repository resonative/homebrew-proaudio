cask "relab-maselec-mea-2" do
  version "1.1.3"
  sha256 "688df260d307123aa6d281c309e39a100d9bf64fe941e33de01fed030d6fdb37"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/Maselec/v#{version.major_minor}/Maselec+MEA-2.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development Maselec MEA-2"
  desc "Maselec MEA-2 stereo EQ emulation"
  homepage "https://relabdevelopment.com/mea-2/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "Maselec+MEA-2.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.MaselecMEA2AAX",
    "com.relab.pkg.MaselecMEA2AU",
    "com.relab.pkg.MaselecMEA2Data",
    "com.relab.pkg.MaselecMEA2VST3",
  ]
end
