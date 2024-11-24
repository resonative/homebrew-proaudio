cask "uhe-zebra2" do
  version "2.9.4_16765"
  sha256 "9dba6b632f3b29247448340eb97c1ce9a460d28aeeb262f89893cddca8150d51"

  url "https://dl.u-he.com/releases/Zebra_Legacy_#{version.no_dots}_Mac.zip"
  name "U-he Zebra2"
  desc "Semi-modular synth"
  homepage "https://u-he.com/products/zebra-legacy/"

  auto_updates false

  pkg "Zebra_Legacy_#{version.no_dots}_Mac/01 Zebra2/Zebra2 #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Zebra2.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Zebra2.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Zebra2.plist",
    "~/Library/Application Support/u-he/com.u-he.Zebra2.Preferences.txt",
    "~/Library/Application Support/u-he/Zebra2/",
  ]

  caveats "After install, please locate and install soundsets from #{caskroom_path}/uhe-zebra2/"
end
