cask "psp-consoleq" do
  version "2.0.3"
  sha256 "dfc69b5390dfb9c164b94fff68ad305dc26ee727b1b9b428f7b47644b6a0288a"

  url "https://download-eu2.pspaudioware.net/PSP_ConsoleQ/OSX/PSP_ConsoleQ_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP ConsoleQ"
  desc "British console-style equalizer"
  homepage "https://www.pspaudioware.com/products/psp-consoleq"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_ConsoleQ_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.ConsoleQ.*",
            delete:  "~/Documents/PSPaudioware.com/PSP ConsoleQ/"
end
