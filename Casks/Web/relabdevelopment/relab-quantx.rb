cask "relab-quantx" do
  version "1.2.2"
  sha256 "f16ee67e37c5ea75d0e7c035daafea5b34117b28771409a38f7435f379fd1ce4"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/QuantX/v#{version.major_minor}/QuantX.pkg",
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
