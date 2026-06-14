cask "relab-176" do
  version "1.2.0"
  sha256 "ef5b55571ec82596fc88867cebdca7ed58bbc05e6e5130534e969f57cec61d00"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/Relab+176/v#{version}/Relab+176.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab 176"
  desc "Retro 176 tube compressor emulation"
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
