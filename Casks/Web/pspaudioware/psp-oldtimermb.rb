cask "psp-oldtimermb" do
  version "1.2.2"
  sha256 "23cf94ed0d83481655622a2a253f1886c86505dcdf0f3ba54c4732795d59626f"

  url "https://download-eu2.pspaudioware.net/PSP_oldTimerMB/OSX/PSP_oldTimerMB_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP oldtimerMB"
  desc "Multi-band version of PSP oldTimer (vintage style compressor)"
  homepage "https://www.pspaudioware.com/products/psp-oldtimermb"

  auto_updates false

  pkg "PSP_oldTimerMB_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.oldTimerMB.*",
            delete:  "~/Documents/PSPaudioware.com/PSP oldTimerMB/"
end
