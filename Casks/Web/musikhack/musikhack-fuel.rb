cask "musikhack-fuel" do
  version "1.0.0"
  sha256 "f4c7fc2a48a06721b352d1302bef48f2edffe5d1ffe86c1b6318313863305292"

  url "https://downloads.musikhack.com/FUEL/FUEL_MAC_#{version}.dmg"
  name "Musik Hack FUEL"
  desc "Saturation with maximizer"
  homepage "https://www.musikhack.com/products/fuel/"

  auto_updates false

  pkg "FUEL Installer.pkg"

  uninstall pkgutil: "com.musikhack.FUEL.*"
end
