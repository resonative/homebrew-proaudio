cask "uhe-colour-copy" do
  version "1.0.2_16742"
  sha256 "41d8db0d3546091716909f806fe6874e3d7485e22a92e8819e97c87e881ddd66"

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
