cask "psp-oldtimer" do
  version "2.3.0"
  sha256 "b439ab780ea40f70c9934df7c13af039bb4fc0707c4cd6d8a2d66396ce55f57c"

  url "https://download-eu2.pspaudioware.net/PSP_oldTimerME/OSX/native/PSP_oldTimer_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP oldtimer ME"
  desc "Vintage style compressor"
  homepage "https://www.pspaudioware.com/products/psp-oldtimer-me"

  auto_updates false

  pkg "PSP_oldTimer_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.oldTimer.*",
            delete:  "~/Documents/PSPaudioware.com/PSP oldTimer2/"
end
