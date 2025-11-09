cask "psp-busspressor" do
  version "2.0.0"
  sha256 "74c7f307005c27f4c2b0199435256258e7e445f06f07d016ef75759a82fef046"

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
