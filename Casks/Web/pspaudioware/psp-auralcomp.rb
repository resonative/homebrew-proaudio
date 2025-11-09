cask "psp-auralcomp" do
  version "1.0.3"
  sha256 "c443a2f6b69af8cc63a7d8ea36136c016d8f799cf5db1f4667e26139e0ecda63"

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
