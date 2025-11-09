cask "psp-easyverb" do
  version "2.0.1"
  sha256 "7517303a7d9121359d263b70195ab9be0c64542343ce484742b8edc917fb01b9"

  url "https://download-eu2.pspaudioware.net/PSP_EasyVerb/OSX/native/PSP_EasyVerb_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP BinAmp"
  desc "Multipurpose algorithmic reverb"
  homepage "https://pspaudioware.com/products/psp-easyverb"

  auto_updates false

  pkg "PSP_EasyVerb_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.EasyVerb.*",
            delete:  "~/Documents/PSPaudioware.com/PSP EasyVerb/"
end
