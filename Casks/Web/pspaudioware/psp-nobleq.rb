cask "psp-nobleq" do
  version "1.8.5"
  sha256 "bc4366f25dbe37d851f0969a246e29fee068dcf25c9064c69d4d9c4d7246aefd"

  url "https://download-eu2.pspaudioware.net/PSP_NobleQ/OSX/PSP_NobleQ_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP NobleQ"
  desc "Passive program style equalizer"
  homepage "https://www.pspaudioware.com/products/psp-nobleq"

  auto_updates false

  pkg "PSP_NobleQ_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.NobleQ.*",
            delete:  "~/Documents/PSPaudioware.com/PSP NobleQ/"
end
