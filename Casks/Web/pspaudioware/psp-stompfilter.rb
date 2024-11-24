cask "psp-stompfilter" do
  version "1.2.2"
  sha256 "f6b9a9c925260d44f8794f73048284a121f90c804556548ba65c4e9e74a179fe"

  url "https://download-eu2.pspaudioware.net/PSP_stompFilter/OSX/PSP_stompFilter_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP stompFilter"
  desc "Creative filter plugin"
  homepage "https://www.pspaudioware.com/products/psp-stompfilter"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_stompFilter_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.stompFilter.*",
            delete:  "~/Documents/PSPaudioware.com/PSP stompFilter/"
end
