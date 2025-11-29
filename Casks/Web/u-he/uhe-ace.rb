cask "uhe-ace" do
  version "1.4.3_16518"
  sha256 "b5cd00dd3383d0f25ba7923e521fabfc0016b7b79814b43f5fef43d044f91d1a"

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
