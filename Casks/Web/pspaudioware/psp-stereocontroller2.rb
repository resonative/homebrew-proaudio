cask "psp-stereocontroller2" do
  version "2.0.2"
  sha256 "318f75bc20394aeed28b5ce2aa4661087e13d34bf9255c4ac49e28fafe515960"

  url "https://download-eu2.pspaudioware.net/PSP_stereoController2/OSX/PSP_stereoController2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP stereoController2"
  desc "Track channel utility"
  homepage "https://www.pspaudioware.com/products/psp-stereocontroller2"

  auto_updates false

  pkg "PSP_stereoController2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.stereoController2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP stereoController2/"
end
