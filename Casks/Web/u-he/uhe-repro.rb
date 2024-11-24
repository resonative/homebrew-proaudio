cask "uhe-repro" do
  version "1.1.2_12092"
  sha256 "fac4918807afb0ace57964d138ed532b8b7982fca055b67f53ef9a726a6c30e6"

  url "https://dl.u-he.com/releases/Repro_#{version.no_dots}_Mac.zip"
  name "U-he Repro"
  desc "Modeling synthesizer Repro-1 and Repro-5"
  homepage "https://u-he.com/products/repro/"

  auto_updates false

  pkg "Repro-1_#{version.split("_").second}_Mac/Repro-1 #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.repro-1.*"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Repro-1.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Repro-1.plist",
    "~/Library/Application Support/u-he/com.u-he.Repro-1.Preferences.txt",
    "~/Library/Application Support/u-he/com.u-he.Repro-5.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Repro-5.Preferences.txt",
    "~/Library/Application Support/u-he/Repro-1/",
  ]
end
