cask "relab-quantx" do
  version "2.0.1"
  sha256 "bf58e330aa8bfbfcdb8d514f5f978a3f099b266080ec3747c2c0c39de3bcd568"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/QuantX/v#{version}/QuantX.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development QuantX"
  desc "Quantec Room Simulator (QRS) reverb emulation"
  homepage "https://relabdevelopment.com/quantx/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "QuantX.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.QuantXAAX",
    "com.relab.pkg.QuantXAU",
    "com.relab.pkg.QuantXData",
    "com.relab.pkg.QuantXVST3",
  ]
end
