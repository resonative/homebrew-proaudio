cask "psp-vintagewarmer2" do
  version "2.10.4"
  sha256 "d87e1d85e5b2fd9a28b8f34fe79bb7c7129428e800cfc404722e75139075a756"

  url "https://download-eu2.pspaudioware.net/PSP_VintageWarmer2/OSX/native/PSP_VintageWarmer2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP VintageWarmer2"
  desc "Analog-style multi-band compressor/limiter"
  homepage "https://www.pspaudioware.com/products/psp-vintagewarmer2"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_VintageWarmer2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.VintageWarmer2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP VintageWarmer2/"
end
