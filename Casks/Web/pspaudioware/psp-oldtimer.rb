cask "psp-oldtimer" do
  version "2.2.2"
  sha256 "f2b45fdc8b1e4571abe00188c0d1990419ba6c9e936a1deaa8926f67d9d00529"

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
