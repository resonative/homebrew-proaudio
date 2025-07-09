cask "relab-lx480" do
  version "4.0.6"
  sha256 "b7c518d541bb6302aa7f30ff8485da4956e0fb4dfbb4cc82521d2fc5abf829e2"

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
