cask "uhe-protoverb" do
  version "1.0.1_12092"
  sha256 "18d15e06620c14c41923bc59c0c61d7f4614afdd6174c399f5835c766c527eaf"

  url "https://dl.u-he.com/releases/Protoverb_#{version.no_dots}_Mac.zip"
  name "U-he Protoverb"
  desc "Experimental reverb"
  homepage "https://u-he.com/products/protoverb/"

  auto_updates false

  pkg "Protoverb_#{version.split("_").second}_Mac/Protoverb #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Protoverb.*"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Protoverb.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Protoverb.Preferences.txt",
    "~/Library/Application Support/u-he/Protoverb/",
  ]
end
