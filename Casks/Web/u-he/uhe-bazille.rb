cask "uhe-bazille" do
  version "1.1.3_16518"
  sha256 "726104668b5baa6dcd5218a88c91c6f1f8afcd17ac962d7033a131c2fd18a7d0"

  url "https://dl.u-he.com/releases/Bazille_#{version.no_dots}_Mac.zip"
  name "U-he Bazille"
  desc "Polyphonic modular synthesizer"
  homepage "https://u-he.com/products/bazille/"

  auto_updates false

  pkg "Bazille_#{version.split("_").second}_Mac/Bazille #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Bazille.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/Bazille/",
    "~/Library/Application Support/u-he/com.u-he.Bazille.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Bazille.plist",
    "~/Library/Application Support/u-he/com.u-he.Bazille.Preferences.txt",
  ]
end
