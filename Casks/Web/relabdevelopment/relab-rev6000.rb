cask "relab-rev6000" do
  version "1.0.3"
  sha256 "cd88eee0d1db775948f8e7d6f6bb5ac89458d211648e4acc787939310f401b4f"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/VSR_REV6000/v#{version}/REV6000.pkg",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development REV6000"
  desc "TC Electronic System 6000 reverb emulation"
  homepage "https://relabdevelopment.com/rev6000/"

  auto_updates false
  depends_on macos: ">= :catalina"

  pkg "REV6000.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.REV6000AAX",
    "com.relab.pkg.REV6000AU",
    "com.relab.pkg.REV6000Data",
    "com.relab.pkg.REV6000VST3",
  ]
end
