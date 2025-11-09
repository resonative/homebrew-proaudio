cask "psp-lotary2" do
  version "2.1.4"
  sha256 "fabba8e2bece0659c8cd02942965f7acf006483611169fc5f1d02fa61cf7ef20"

  url "https://download-eu2.pspaudioware.net/PSP_Lotary2/OSX/PSP_Lotary2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP L'otary2"
  desc "Rotary speaker emulation"
  homepage "https://www.pspaudioware.com/products/psp-lotary2"

  auto_updates false

  pkg "PSP_Lotary2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.Lotary2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Lotary2/"
end
