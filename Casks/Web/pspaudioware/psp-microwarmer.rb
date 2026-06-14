cask "psp-microwarmer" do
  version "2.11.0"
  sha256 "bb1f59a9062d025c56c26235a2568bc7a2fe1d3ad375acf6c515160b5720c0ab"

  url "https://download-eu2.pspaudioware.net/PSP_MicroWarmer/OSX/PSP_MicroWarmer_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP VintageWarmer2 lite"
  desc "Analog-style multi-band compressor/limiter"
  homepage "https://www.pspaudioware.com/products/psp-microwarmer"

  auto_updates false

  pkg "PSP_MicroWarmer2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.MicroWarmer2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP MicroWarmer2/"
end
