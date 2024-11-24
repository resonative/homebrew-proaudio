cask "uhe-filterscape" do
  version "1.5.1_15664"
  sha256 "317e51becaa68afe53694d6375c7aad4ca05249c1d67797ba356752fb5681228"

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
