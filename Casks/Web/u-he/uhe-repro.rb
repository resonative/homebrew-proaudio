cask "uhe-repro" do
  version "1.1.3_16797"
  sha256 "2d797891319f4dcda06d7cdf30a5233949411659c5a38307010c6908f65cef63"

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
