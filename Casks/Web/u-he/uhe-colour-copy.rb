cask "uhe-colour-copy" do
  version "1.0.2_16742"
  sha256 "9a13297aa35b8b4bb85cca2c35e0d03681e45154d80025edd8731b0e036aba1b"

  url "https://uhe-dl.b-cdn.net/releases/ColourCopy_#{version.no_dots}_Mac.zip"
  name "U-he Colour Copy"
  desc "BBD style delay"
  homepage "https://u-he.com/products/colourcopy/"

  auto_updates false

  pkg "ColourCopy_#{version.split("_").second}_Mac/ColourCopy #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.ColourCopy.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/ColourCopy/",
    "~/Library/Application Support/u-he/com.u-he.ColourCopy.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.ColourCopy.plist",
    "~/Library/Application Support/u-he/com.u-he.ColourCopy.Preferences.txt",
  ]
end
