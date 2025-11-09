cask "psp-vintagewarmer2" do
  version "2.10.6"
  sha256 "d4e8430830c1d571dddd1033b73959f61dbcf3b0261a9ac65a0c528b5d830bee"

  url "https://download-eu2.pspaudioware.net/PSP_VintageWarmer2/OSX/native/PSP_VintageWarmer2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP VintageWarmer2"
  desc "Analog-style multi-band compressor/limiter"
  homepage "https://www.pspaudioware.com/products/psp-vintagewarmer2"

  auto_updates false

  pkg "PSP_VintageWarmer2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.VintageWarmer2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP VintageWarmer2/"
end
