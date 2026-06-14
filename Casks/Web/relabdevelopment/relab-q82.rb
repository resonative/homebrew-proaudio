cask "relab-q82" do
  version "2.1.0"
  sha256 "84b6c221480c066058a5815e77730688fc605546577c2dd1350a19e0a317f769"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/Q82/Relab+Q82.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development Q82 (QuantX)"
  desc "Quantec Room Simulator (QRS) reverb emulation"
  homepage "https://relabdevelopment.com/quantx/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "Relab+Q82.pkg"

  uninstall pkgutil: [
  	"com.relab.pkg.Q82Data",
    "com.relab.pkg.QuantXAAX",
    "com.relab.pkg.QuantXAU",
    "com.relab.pkg.QuantXVST3",
  ]
end
