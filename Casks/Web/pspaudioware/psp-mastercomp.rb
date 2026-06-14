cask "psp-mastercomp" do
  version "1.11.0"
  sha256 "d5f123f0c586c09642f748389fc2dbe74254118387bfa6c4babf97ab3aa94a22"

  url "https://download-eu2.pspaudioware.net/PSP_MasterComp/OSX/native/PSP_MasterComp_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP MasterComp"
  desc "Master Bus Compressor"
  homepage "https://www.pspaudioware.com/products/psp-mastercomp"

  auto_updates false

  pkg "PSP_MasterComp_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.MasterComp.*",
            delete:  "~/Documents/PSPaudioware.com/PSP MasterComp/"
end
