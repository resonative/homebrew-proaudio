cask "psp-auralcomp" do
  version "2.0.2"
  sha256 "36e90539f51d298f6a6f695789d64be482797f77d8b11455940cdacfb35d8675"

  url "https://download-eu2.pspaudioware.net/PSP_auralComp/OSX/PSP_auralComp_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP auralComp"
  desc "Multi-channel compressor and limiter"
  homepage "https://www.pspaudioware.com/products/psp-auralcomp"

  auto_updates false

  pkg "PSP_auralComp_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.auralComp.*",
            delete:  "~/Documents/PSPaudioware.com/PSP auralComp/"
end
