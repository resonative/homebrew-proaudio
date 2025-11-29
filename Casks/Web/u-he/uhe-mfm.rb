cask "uhe-mfm" do
  version "2.5.1_16742"
  sha256 "9830948cb796bd107c1a7a7d242bf7e3c55db798d3e5f276bfe0edcf6725b14b"

  url "https://dl.u-he.com/releases/MFM2_#{version.no_dots}_Mac.zip"
  name "U-he MFM (More Feedback Machine)"
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
