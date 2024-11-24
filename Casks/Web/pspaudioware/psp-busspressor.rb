cask "psp-busspressor" do
  version "1.1.3"
  sha256 "2d173e6cd9615e360c10d07124c6bdeae8a434d49066046c9acbd01992c85801"

  url "https://download-eu2.pspaudioware.net/PSP_BussPressor/OSX/PSP_BussPressor_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP BussPressor"
  desc "Master bus compressor"
  homepage "https://www.pspaudioware.com/products/psp-busspressor"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_BussPressor_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.BussPressor.*",
            delete:  "~/Documents/PSPaudioware.com/PSP BussPressor/"
end
