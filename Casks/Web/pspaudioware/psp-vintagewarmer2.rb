cask "psp-vintagewarmer2" do
  version "2.11.0"
  sha256 "40bd08b3a7055c9f1b642d54ade1ada19db36c8ec98e90101d8055c056fb4355"

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
