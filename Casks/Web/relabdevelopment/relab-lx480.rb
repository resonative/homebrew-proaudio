cask "relab-lx480" do
  version "4.0.5"
  sha256 "256b5df53feffa3176c57b0791a7d58380e8aee124b907aaafe48fee1621aaac"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/LX480_Complete/Mac/LX480_Mac_v#{version}.pkg.zip",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development LX480"
  desc "Lexicon 480L reverb emulation"
  homepage "https://relabdevelopment.com/lx480-dual-engine-reverb/"

  auto_updates false

  pkg "LX480_Mac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.LX480AAX",
    "com.relab.pkg.LX480AU",
    "com.relab.pkg.LX480Data",
    "com.relab.pkg.LX480VST",
    "com.relab.pkg.LX480VST3",
  ]
end
