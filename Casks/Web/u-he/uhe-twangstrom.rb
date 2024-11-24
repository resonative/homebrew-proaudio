cask "uhe-twangstrom" do
  version "1.0.2_16742"
  sha256 "050efc17725885e8129c023aca874fea1760e0b40b2d2685bb8bc84e1dd3619c"

  url "https://dl.u-he.com/releases/Twangstrom_#{version.no_dots}_Mac.zip"
  name "U-he Twangstrom"
  desc "Spring reverb"
  homepage "https://u-he.com/products/twangstrom/"

  auto_updates false

  pkg "Twangstrom_#{version.split("_").second}_Mac/Twangstrom #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Twangstrom.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Twangstrom.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Twangstrom.plist",
    "~/Library/Application Support/u-he/com.u-he.Twangstrom.Preferences.txt",
    "~/Library/Application Support/u-he/Twangstrom/",
  ]
end
