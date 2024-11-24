cask "psp-mastercomp" do
  version "1.10.0"
  sha256 "1d5a9ad4146cfa187a6974da61621f39f51b9edf9d454c292f87d9f504e22d5b"

  url "https://download-eu2.pspaudioware.net/PSP_MasterComp/OSX/native/PSP_MasterComp_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP MasterComp"
  desc "Master Bus Compressor"
  homepage "https://www.pspaudioware.com/products/psp-mastercomp"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_MasterComp_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.MasterComp.*",
            delete:  "~/Documents/PSPaudioware.com/PSP MasterComp/"
end
