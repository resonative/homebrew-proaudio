cask "uhe-filterscape" do
  version "1.5.1_15664"
  sha256 "99b2b74a7283f8af18c98d7cbe44a1012ec3f70cd1a6778ad459db4f75c8f62e"

  url "https://dl.u-he.com/releases/Filterscape_#{version.no_dots}_Mac.zip"
  name "U-he Filterscape"
  desc "Tape emulator"
  homepage "https://u-he.com/products/filterscape/"

  auto_updates false

  pkg "Filterscape_#{version.split("_").second}_Mac/Filterscape #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Filterscape.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Filterscape.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Filterscape.plist",
    "~/Library/Application Support/u-he/com.u-he.Filterscape.Preferences.txt",
    "~/Library/Application Support/u-he/com.u-he.FilterscapeQ6.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.FilterscapeVA.midiassign.txt",
    "~/Library/Application Support/u-he/Filterscape/",
  ]
end
