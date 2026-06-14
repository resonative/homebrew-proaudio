cask "psp-busspressor" do
  version "2.1.0"
  sha256 "6bcd3931a7dd1aedeac80619de96711a8764a83b3f2755f2ed310111bb092562"

  url "https://download-eu2.pspaudioware.net/PSP_BussPressor/OSX/PSP_BussPressor_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP BussPressor"
  desc "Master bus compressor"
  homepage "https://www.pspaudioware.com/products/psp-busspressor"

  auto_updates false

  pkg "PSP_BussPressor_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.BussPressor.*",
            delete:  "~/Documents/PSPaudioware.com/PSP BussPressor/"
end
