cask "uhe-satin" do
  version "1.3.3_15721"
  sha256 "324e2f68168aed4341bd333fade54a23888d621e7406039c55d7596fa7f2a8b3"

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
