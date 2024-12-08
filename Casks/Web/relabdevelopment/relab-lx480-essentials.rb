cask "relab-lx480-essentials" do
  version "2.2.3"
  sha256 "f4b24fa56ed7ecebd083c7476da799f5a1f1c157e9aa3af8a262242875b48fa2"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/LX480_Essentials/LX480_Essentials_Mac_v#{version}.pkg.zip",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development LX480 Essentials"
  desc "Lexicon 480L reverb emulation essentials (lite) version"
  homepage "https://relabdevelopment.com/lx480-essentials/"

  auto_updates false

  pkg "LX480_Essentials_Mac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.LX480EssentialsData",
    "com.relab.pkg.LX480EssentialsPlugin",
  ]
end
