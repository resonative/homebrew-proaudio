cask "relab-q82-essentials" do
  version "2.1.0"
  sha256 "ee462f7e2f92f950da9fa8223fbddcede49f91bde4729ea4eb8fce01b20b3642"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/Q82_Essentials/Relab+Q82+Essentials.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development QuantX"
  desc "Quantec Room Simulator (QRS) reverb emulation lite version"
  homepage "https://relabdevelopment.com/quantx-essentials/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "Relab+Q82+Essentials.pkg"

  uninstall pkgutil: [
  	"com.relab.pkg.RelabQ82EssentialsData",
    "com.relab.pkg.QuantXEssentialsAAX",
    "com.relab.pkg.QuantXEssentialsAU",
    "com.relab.pkg.QuantXEssentialsVST3",
  ]
end
