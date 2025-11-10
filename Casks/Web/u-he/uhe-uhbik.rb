cask "uhe-uhbik" do
  version "2.0.0_19684"
  sha256 "c0f4475c364721c8c37e8a27028c198002ad530e81bc7aade6360b484b7ac2c6"

  url "https://dl.u-he.com/releases/Uhbik_#{version.no_dots}_Mac.zip"
  name "U-he Uhbik"
  desc "Effect suite"
  homepage "https://u-he.com/products/uhbik/"

  auto_updates false

  pkg "Uhbik_#{version.split("_").second}_Mac/Uhbik #{version.split("_").first} Installer.pkg"

  uninstall pkgutil: "com.u-he.Uhbik.*.pkg"

  zap trash: [
    "~/Library/Application Support/u-he/Uhbik/",
    "~/Library/Application Support/com.u-he.Uhbik*.txt",
    "~/Library/Application Support/u-he/com.u-he.Uhbik.plist",
  ]
end
