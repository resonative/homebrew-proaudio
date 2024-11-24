cask "uhe-hive" do
  version "2.1.2,16520"
  sha256 "fa911c2d13162fd7127015e051c9f7a9f827de3e466253928604e17be2f8353d"

  url "https://dl.u-he.com/releases/Hive_#{version.csv.first.no_dots}_#{version.csv.second}_Mac.zip"
  name "U-he Hive"
  desc "CPU friendly synth with three engines"
  homepage "https://u-he.com/products/hive/"

  auto_updates false

  pkg "Hive_#{version.csv.second}_Mac/Hive #{version.csv.first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Hive.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Hive.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Hive.plist",
    "~/Library/Application Support/u-he/com.u-he.Hive.Preferences.txt",
    "~/Library/Application Support/u-he/Hive/",
  ]
end
