cask "uhe-repro" do
  version "1.1.3_16797"
  sha256 "e47183dd78ae58edcf53aa6f3ae80c40bf95ff755b1e733dc9cb8a4ba1fe492d"

  url "https://dl.u-he.com/releases/Repro_#{version.no_dots}_Mac.zip"
  name "U-he Repro"
  desc "Modeling synthesizer Repro-1 and Repro-5"
  homepage "https://u-he.com/products/repro/"

  auto_updates false

  pkg "Repro-1_#{version.split("_").second}_Mac/Repro-1 #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Repro-1.*"

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Repro-1.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Repro-1.plist",
    "~/Library/Application Support/u-he/com.u-he.Repro-1.Preferences.txt",
    "~/Library/Application Support/u-he/com.u-he.Repro-5.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Repro-5.Preferences.txt",
    "~/Library/Application Support/u-he/Repro-1/",
  ]
end
