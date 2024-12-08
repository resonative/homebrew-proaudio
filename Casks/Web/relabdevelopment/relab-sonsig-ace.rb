cask "relab-sonsig-ace" do
  version "1.1.1"
  sha256 "064c959d1db106d13ee0f026ac16125bc93a0817182c0d743902224675c77fa7"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/Sonsig_ACE/v#{version}/SonsigACE.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development Sonsig ACE"
  desc "Chorus/ensemble modulation plugin"
  homepage "https://relabdevelopment.com/ace/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "SonsigACE.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.SonsigACEAAX",
    "com.relab.pkg.SonsigACEAU",
    "com.relab.pkg.SonsigACEData",
    "com.relab.pkg.SonsigACEVST3",
  ]
end
