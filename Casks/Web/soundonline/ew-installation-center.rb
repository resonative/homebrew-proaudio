cask "ew-installation-center" do
  version "1.5.1"
  sha256  "4d551bd1ec68c8876baf572e5f84352ea85c7e46f7bcd352342523b42587d914"

  url "https://software.soundsonline.com/Products/IC/IC_#{version}_Mac.zip"
  name "East West EW Installation Center"
  desc "Product manager/downloader for East West (Soundsonline) instruments"
  homepage "https://www.soundsonline.com/support/updates"

  auto_updates true

  pkg "EW Installation Center-#{version}.pkg"

  uninstall pkgutil: "com.eastwest.pkg.installationcenter"
end
