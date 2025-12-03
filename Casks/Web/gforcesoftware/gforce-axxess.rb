cask "gforce-axxess" do
  version "1.0.1"
  sha256 "abe95d70fd91f0e3a2083f5858787f7c2f9d077c3dbd50997c1a34564765da09"

  url "https://gforcehosting.s3.eu-west-2.amazonaws.com/All+Current+Releases/Axxess/Axxess-#{version}-Installer-macOS.dmg",
      verified: "gforcehosting.s3.eu-west-2.amazonaws.com/"
  name "Gforce Software AXXESS"
  desc "ARP AXXE Emulation"
  homepage "https://www.gforcesoftware.com/products/axxess/"

  auto_updates false

  pkg "Double Click to Install.pkg"

  uninstall pkgutil: "com.GForce.Axxess*"
end
