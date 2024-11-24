cask "uhe-zebrahz" do
  version "2.9.4_16765"
  sha256 "9dba6b632f3b29247448340eb97c1ce9a460d28aeeb262f89893cddca8150d51"

  url "https://dl.u-he.com/releases/Zebra_Legacy_#{version.no_dots}_Mac.zip"
  name "U-he Zebra2"
  desc "Semi-modular synth"
  homepage "https://u-he.com/products/zebra-legacy/"

  auto_updates false

  pkg "Zebra_Legacy_#{version.no_dots}_Mac/02 The Dark Zebra/The Dark Zebra #{version.split("_").first} Mac Installer.pkg"

  uninstall pkgutil: "com.u-he.ZebraHZ.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.ZebraHZ.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.ZebraHZ.plist",
    "~/Library/Application Support/u-he/com.u-he.ZebraHZ.Preferences.txt",
    "~/Library/Application Support/u-he/ZebraHZ/",
  ]
end
