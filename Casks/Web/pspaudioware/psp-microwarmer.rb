cask "psp-microwarmer" do
  version "2.10.6"
  sha256 "6e31bff2fdcdbf9ac075875f30a72137b66d6de194d2ccf19fcab5fc5b31b196"

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
