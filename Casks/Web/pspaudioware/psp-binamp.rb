cask "psp-binamp" do
  version "1.1.1"
  sha256 "24c62ca5007f0fb016de34265764947a9b931a4a29308ca7491c63afece9f16a"

  url "https://download-eu2.pspaudioware.net/PSP_BinAmp/OSX/PSP_BinAmp_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP BinAmp"
  desc "Class A triode preamp emulation"
  homepage "https://www.pspaudioware.com/products/psp-binamp"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_BinAmp_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.BinAmp.*",
            delete:  "~/Documents/PSPaudioware.com/PSP BinAmp/"
end
