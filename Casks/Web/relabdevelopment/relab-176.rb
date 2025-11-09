cask "relab-176" do
  version "1.0"
  sha256 "62a159a56655f1a25e1f1c19b706086a83897d921a5af2b266c2b4ed7d688dcf"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/Relab+176/v#{version}/Relab+176.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab 176"
  desc "UA 176 tube compressor emulation"
  homepage "https://relabdevelopment.com/relab-176/"

  auto_updates false

  pkg "Relab+176.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.Relab176AAX",
    "com.relab.pkg.Relab176AU",
    "com.relab.pkg.Relab176VST3",
  ]

  zap delete: "/Users/Shared/Relab Development/Relab176/"
end
