cask "uhe-zebralette3" do
  version "3.0.0_20399"
  sha256 "2ff7b8a0c9e29de90d659da0c3b01486918db2c33ba238ce6ba0cc965f4240f7"

  url "https://dl.u-he.com/releases/zebralette3_#{version.no_dots}_Mac.zip"
  name "U-he Zebralette"
  desc "Effect suite"
  homepage "https://u-he.com/products/uhbik/"

  auto_updates false

  pkg "Zebralette3_#{version.split("_").second}_Mac/Zebralette3 3.0 Installer.pkg"

  uninstall pkgutil: "com.u-he.Zebralette3.*.pkg"

  zap trash: [
    "~/Library/Application Support/com.u-he.Zebralette3.Preferences.txt",
    "~/Library/Application Support/u-he/com.u-he.Zebralette3.midiassign.txt",
  ]
end
