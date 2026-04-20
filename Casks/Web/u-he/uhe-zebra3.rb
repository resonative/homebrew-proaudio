cask "uhe-zebra3" do
  version "3.0.0_21799"
  sha256 "9b61c4734fe11bbdfb2825f77246d825202111f1bed7c69d3ec7f82ed8d6cf4b"

  url "https://uhe-dl.b-cdn.net/releases/Zebra3_#{version.no_dots}_Mac.zip",
  	  verified: "https://uhe-dl.b-cdn.net"
  name "U-he Zebra3"
  desc "Semi-modular synth"
  homepage "https://u-he.com/products/synths/zebra3/"

  auto_updates false

  pkg "Zebra3 #{version.major_minor} Installer.pkg"

  uninstall pkgutil: [
  	"com.u-he.Standalone",
  	"com.u-he.Zebra3.*.pkg",
  ]
end
