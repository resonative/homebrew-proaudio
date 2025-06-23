cask "uhe-presswerk" do
  version "1.1.6_16960"
  sha256 "4bb0beff3bd00c7255b87ac11ffef163f9de99d9405bf6fd422fbd7d07c31056"

  url "https://uhe-dl.b-cdn.net/releases/Presswerk_#{version.no_dots}_Mac.zip"
  name "U-he Presswerk"
  desc "Multi-model compresser"
  homepage "https://u-he.com/products/presswerk/"

  auto_updates false

  pkg "Presswerk_#{version.split("_").second}_Mac/Presswerk #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Presswerk.*"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Presswerk.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Presswerk.plist",
    "~/Library/Application Support/u-he/com.u-he.Presswerk.Preferences.txt",
    "~/Library/Application Support/u-he/Presswerk/",
  ]
end
