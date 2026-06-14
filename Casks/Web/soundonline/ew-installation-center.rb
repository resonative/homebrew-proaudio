cask "ew-installation-center" do
  version "1.6.1"
  sha256  "6ea1b8b0d35306ed0ac624b28b097faf2e63bea051ca19518765f756a6dafd31"

  url "https://software.soundsonline.com/Products/IC/IC_#{version}_Mac.zip"
  name "East West EW Installation Center"
  desc "Product manager/downloader for East West (Soundsonline) instruments"
  homepage "https://www.soundsonline.com/support/updates"

  auto_updates true

  pkg "EW Installation Center-#{version}.pkg"

  uninstall pkgutil: "com.eastwest.pkg.installationcenter"
end
