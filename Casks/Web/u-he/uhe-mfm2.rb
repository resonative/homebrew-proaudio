cask "uhe-mfm2" do
  version "2.5.1_16742"
  sha256 "aa62360b7a498a71f93019359c81d2169688a74a5b037b903a8f646969a29221"

  url "https://dl.u-he.com/releases/MFM2_#{version.no_dots}_Mac.zip"
  name "U-he MFM2"
  desc "Digital delay with 4 delay lines"
  homepage "https://u-he.com/products/mfm2/"

  auto_updates false

  pkg "MFM2_#{version.split("_").second}_Mac/MFM2 #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.MFM2.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.MFM2.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.MFM2.plist",
    "~/Library/Application Support/u-he/com.u-he.MFM2.Preferences.txt",
    "~/Library/Application Support/u-he/MFM2/",
  ]
end
