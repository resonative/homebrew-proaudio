cask "psp-2445-emt" do
  version "1.3.12"
  sha256 "356b8ab23d5b4aaa673f5d1bc4aa986f8c47770b11654893b15d09fbd2c47b3d"

  url "https://download-eu2.pspaudioware.net/PSP_2445/OSX/PSP_2445_EMT_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP 2445 EMT"
  desc "Reverb inspired by EMT 244/245"
  homepage "https://www.pspaudioware.com/products/psp-2445-emt"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_2445_EMT_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.2445.*",
            delete:  "~/Documents/PSPaudioware.com/PSP 2445/"
end
