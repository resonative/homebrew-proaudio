cask "uhe-diva" do
  version "1.4.8,16519"
  sha256 "856091eb742e8955684fe969ef45da1d33f629e325a8c06686d2f508895662fb"

  url "https://dl.u-he.com/releases/Diva_#{version.csv.first.no_dots}_#{version.csv.second}_Mac.zip"
  name "U-he Diva"
  desc "Virtual analogue synthesizer"
  homepage "https://u-he.com/products/diva/"

  auto_updates false

  pkg "Diva_#{version.csv.second}_Mac/Diva #{version.csv.first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Diva.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Diva.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Diva.plist",
    "~/Library/Application Support/u-he/com.u-he.Diva.Preferences.txt",
    "~/Library/Application Support/u-he/Diva/",
  ]
end
