cask "psp-masterq2" do
  version "2.1.5"
  sha256 "c9f6566e8671a354fff8d7c27ece1ab1c9b5e52d9dca466401aeb87b8d4bfe56"

  url "https://download-eu2.pspaudioware.net/PSP_MasterQ2/OSX/PSP_MasterQ2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP MasterQ2"
  desc "Master Bus Equalizer"
  homepage "https://www.pspaudioware.com/products/psp-masterq2"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_MasterQ2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.MasterQ2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP MasterQ2/"
end
