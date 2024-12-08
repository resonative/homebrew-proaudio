cask "relab-rev6000-essentials" do
  version "1.0.1"
  sha256 "e1e7793c59b19403ac75062353c002cfbcb7da8b53bbbea3d74b3c05771571b5"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/VSR_REV6000_Essentials/V#{version}/REV6000+Essentials.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development REV6000 Essentials"
  desc "TC Electronic System 6000 reverb emulation essentails (lite) version"
  homepage "https://relabdevelopment.com/rev6000-essentials/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "REV6000+Essentials.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.REV6000EssentialsAAX",
    "com.relab.pkg.REV6000EssentialsAU",
    "com.relab.pkg.REV6000EssentialsData",
    "com.relab.pkg.REV6000EssentialsVST3",
  ]
end
