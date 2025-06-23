cask "musikhack-fuel" do
  version "1.0.11"
  sha256 "4f9a0decfaa29ebe59f9c09a932ecb548df6fa36cb2464a53d1baf26ce198f5d"

  url "https://downloads.musikhack.com/FUEL/FUEL_MAC_#{version}.dmg"
  name "Musik Hack FUEL"
  desc "Saturation with maximizer"
  homepage "https://www.musikhack.com/products/fuel/"

  auto_updates false

  pkg "FUEL Installer.pkg"

  uninstall pkgutil: "com.musikhack.FUEL.*"
end
