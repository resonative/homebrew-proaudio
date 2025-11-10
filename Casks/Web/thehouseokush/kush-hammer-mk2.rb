cask "kush-hammer-mk2" do
  version "1.0.5"
  sha256 :no_check

  url "https://thedataofkush.com/installers/HammerMk2_Mac.zip",
      verified: "thedataofkush.com/"
  name "Kush Audio Hammer Mk2"
  desc "Hardware EQ emulation"
  homepage "https://thehouseofkush.com/products/hammermk2"

  pkg "Hammer Mk2_#{version}.pkg"

  uninstall pkgutil: "com.kushaudio.hammermk2.*"
end
