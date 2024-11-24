cask "uhe-satin" do
  version "1.3.3_15721"
  sha256 "7ea935c45c1aa12888348a30a8a2c4d5aff630cec8199e275ce3ce6f601640c8"

  url "https://dl.u-he.com/releases/Satin_#{version.no_dots}_Mac.zip"
  name "U-he Satin"
  desc "Tape emulator"
  homepage "https://u-he.com/products/satin/"

  auto_updates false

  pkg "Satin_#{version.split("_").second}_Mac/Satin #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Satin.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Satin.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Satin.plist",
    "~/Library/Application Support/u-he/com.u-he.Satin.Preferences.txt",
    "~/Library/Application Support/u-he/Satin/",
  ]
end
