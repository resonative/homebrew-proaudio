cask "psp-stereocontroller2" do
  version "2.0.1"
  sha256 "afdc4101453cab500b53690d4a60c8fa157dd39af73b192fd72bd76f414a3c42"

  url "https://download-eu2.pspaudioware.net/PSP_stereoController2/OSX/PSP_stereoController2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP stereoController2"
  desc "Track channel utility"
  homepage "https://www.pspaudioware.com/products/psp-stereocontroller2"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_stereoController2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.stereoController2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP stereoController2/"
end
