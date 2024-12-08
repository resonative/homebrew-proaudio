cask "relab-quantx-essentials" do
  version "1.0.1"
  sha256 "30353ba49a5986ca707c725d976772a429567327f85ef555a607cef3ef3fc3b9"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/QuantX_Essentials/v#{version}/QuantXEssentials.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development QuantX"
  desc "Quantec Room Simulator (QRS) reverb emulation lite version"
  homepage "https://relabdevelopment.com/quantx-essentials/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "QuantXEssentials.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.QuantXEssentialsAAX",
    "com.relab.pkg.QuantXEssentialsAU",
    "com.relab.pkg.QuantXEssentialsData",
    "com.relab.pkg.QuantXEssentialsVST3",
  ]
end
