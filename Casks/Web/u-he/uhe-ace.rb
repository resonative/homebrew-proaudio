cask "uhe-ace" do
  version "1.4.3_16518"
  sha256 "15b9fcfe7793156428712c2825a8f6fd6cdf1ff6ab95ba7270b0c281f1bcec1a"

  url "https://dl.u-he.com/releases/ACE_#{version.no_dots}_Mac.zip"
  name "U-he ACE"
  desc "Semi-modular synth"
  homepage "https://u-he.com/products/ace/"

  auto_updates false

  pkg "ACE_#{version.split("_").second}_Mac/ACE #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.ACE.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/ACE/",
    "~/Library/Application Support/u-he/com.u-he.ACE.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.ACE.plist",
    "~/Library/Application Support/u-he/com.u-he.ACE.Preferences.txt",
  ]
end
