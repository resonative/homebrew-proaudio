cask "psp-stompdelay" do
  version "1.1.4"
  sha256 "3e56bf4d4b6f62193f992b85d7961c1a33f0a7dc449ab70ffa80db4630f68fdd"

  url "https://download-eu2.pspaudioware.net/PSP_stompDelay/OSX/PSP_stompDelay_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP stompDelay"
  desc "Creative delay plugin"
  homepage "https://www.pspaudioware.com/products/psp-stompdelay"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_stompDelay_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.stompDelay.*",
            delete:  "~/Documents/PSPaudioware.com/PSP stompDelay/"
end
